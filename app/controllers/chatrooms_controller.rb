class ChatroomsController < ApplicationController
  def show
  	username = params[:username]
    @chatroom = Chatroom.find_by(username: username) || not_found
    @emote_per_minute = {}
    @chatroom.emoticons.each do |emote_object|
    	emote_name = emote_object.name
    	@emote_per_minute[emote_name] = get_emote_per_minute(username, emote_name)
    end
  end

  def get_emote_per_minute(username, emote)
 		Redis.current.keys("#{username}:#{emote}:*").count
  end
end