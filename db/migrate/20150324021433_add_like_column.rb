class AddLikeColumn < ActiveRecord::Migration
  def change
    add_column :songs, :likes, :interger 
  end
end
