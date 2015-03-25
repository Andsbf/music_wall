class CreatesCommentsTable < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.belongs_to :user, null: false
      t.belongs_to  :song, null: false
      t.text :comment, null: false
      t.timestamps null: false

    end
  end
end
