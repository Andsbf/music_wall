class CreatesUser < ActiveRecord::Migration
  def change
   create_table :users do |t|
     t.string :username, uniqueness: true, null: false
     t.string :password, null: false
     t.string :email 
      t.timestamps
    end

    add_reference :songs, :user 
    
  end
end
