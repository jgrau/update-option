class CreateWebsites < ActiveRecord::Migration
  def self.up
    create_table :websites do |t|
      t.references :user
      t.references :client
      t.references :product
      t.references :version
      t.string :webaddress
      t.string :state

      t.timestamps
    end
  end

  def self.down
    drop_table :websites
  end
end
