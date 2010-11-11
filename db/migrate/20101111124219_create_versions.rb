class CreateVersions < ActiveRecord::Migration
  def self.up
    create_table :versions do |t|
      t.references :user
      t.references :product
      t.string :name
      t.text :changelog
      t.string :webaddress
      t.integer :position, :default => 0, :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :versions
  end
end
