class UseridCantBeNull < ActiveRecord::Migration
  def change
    change_column :songs, :user_id, :string , null: false
  end
end
