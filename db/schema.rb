# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170529020914) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "chatrooms", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
    t.index ["username"], name: "index_chatrooms_on_username", unique: true
  end

  create_table "chatrooms_emoticons", id: false, force: :cascade do |t|
    t.bigint "chatroom_id"
    t.bigint "emoticon_id"
    t.index ["chatroom_id"], name: "index_chatrooms_emoticons_on_chatroom_id"
    t.index ["emoticon_id"], name: "index_chatrooms_emoticons_on_emoticon_id"
  end

  create_table "emoticons", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_emoticons_on_name", unique: true
  end

end
