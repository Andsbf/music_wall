class CreatesSongsTable < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :title, null: false
      t.string :author, null: false
      t.string :url 
 
      t.timestamps null: false
    end
  end
end
