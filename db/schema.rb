# encoding: UTF-8
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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130918054712) do

  create_table "histories", :force => true do |t|
    t.text     "set_attributes"
    t.integer  "show_id"
    t.integer  "user_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "metro_areas", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "shows", :force => true do |t|
    t.integer  "user_id"
    t.string   "name"
    t.string   "web_site"
    t.string   "facebook_link"
    t.string   "twitter_name"
    t.string   "venue"
    t.string   "address"
    t.string   "city"
    t.string   "country"
    t.string   "phone"
    t.integer  "zip"
    t.string   "host_name"
    t.string   "price"
    t.text     "notes"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.integer  "metro_area_id"
    t.string   "filepicker_url"
    t.integer  "show_type"
    t.integer  "state"
    t.integer  "day"
    t.integer  "frequency"
    t.datetime "signup_time"
    t.datetime "start_time"
    t.datetime "end_time"
    t.string   "charge"
    t.datetime "verified_at"
    t.integer  "status"
    t.datetime "start_date"
    t.string   "area"
    t.float    "latitude"
    t.float    "longitude"
    t.boolean  "gmaps"
  end

  create_table "users", :force => true do |t|
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.string   "oauth_token"
    t.datetime "oauth_expires_at"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.boolean  "is_admin"
    t.integer  "friend_count"
    t.string   "profile_image_url"
  end

  create_table "verifications", :force => true do |t|
    t.integer  "user_id"
    t.integer  "show_id"
    t.text     "note"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
