class CreatesVotes < ActiveRecord::Migration
  def change
    remove_column :songs, :likes
    remove_column :songs, :user_id

    create_table :votes do |t|
      t.belongs_to :user, index: true
      t.belongs_to  :song, index: true
      t.timestamps null: false
    end

    add_index :votes, [:user_id, :song_id], unique: true
  end
end
