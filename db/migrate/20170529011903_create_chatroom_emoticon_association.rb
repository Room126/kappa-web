class CreateChatroomEmoticonAssociation < ActiveRecord::Migration[5.1]
  def change
    create_table :chatrooms_emoticons, id: false do |t|
    	t.belongs_to :chatroom, index: true
      	t.belongs_to :emoticon, index: true
    end
  end
end
