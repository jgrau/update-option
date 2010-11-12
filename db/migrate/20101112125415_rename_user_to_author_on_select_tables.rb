class RenameUserToAuthorOnSelectTables < ActiveRecord::Migration
  def self.up
    rename_column :products, :user_id, :author_id
    rename_column :versions, :user_id, :author_id
  end

  def self.down
    rename_column :versions, :author_id, :user_id
    rename_column :products, :author_id, :user_id
  end
end