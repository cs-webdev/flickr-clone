class ChangeAuthorColumnForImages < ActiveRecord::Migration
  def change
    remove_column :images, :author, :string
    add_column :images, :user_id, :integer
    add_index :images, :user_id
  end
end
