class UniqueAndIndex < ActiveRecord::Migration[5.1]
  def change
  	add_index :chatrooms, :username, unique: true
  	add_index :emoticons, :name, unique: true
  end
end
