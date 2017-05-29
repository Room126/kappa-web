class AddUsernameToChatroom < ActiveRecord::Migration[5.1]
  def change
    add_column :chatrooms, :username, :string
  end
end
