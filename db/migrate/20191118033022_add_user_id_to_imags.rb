class AddUserIdToImags < ActiveRecord::Migration[6.0]
  def change
    add_column :imags, :user_id, :integer
    add_index :imags, :user_id
  end
end
