# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100429010015) do

  create_table "tweets", :force => true do |t|
    t.integer  "user_id"
    t.string   "status"
    t.datetime "post_on"
    t.boolean  "posted"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tweets", ["post_on"], :name => "index_tweets_on_post_on"
  add_index "tweets", ["posted", "post_on"], :name => "index_tweets_on_posted_and_post_on"
  add_index "tweets", ["posted"], :name => "index_tweets_on_posted"
  add_index "tweets", ["user_id", "posted", "post_on"], :name => "index_tweets_on_user_id_and_posted_and_post_on"
  add_index "tweets", ["user_id"], :name => "index_tweets_on_user_id"

  create_table "users", :force => true do |t|
    t.string   "twitter_id"
    t.string   "login"
    t.string   "access_token"
    t.string   "access_secret"
    t.string   "remember_token"
    t.datetime "remember_token_expires_at"
    t.string   "name"
    t.string   "location"
    t.string   "description"
    t.string   "profile_image_url"
    t.string   "url"
    t.boolean  "protected"
    t.string   "profile_background_color"
    t.string   "profile_sidebar_fill_color"
    t.string   "profile_link_color"
    t.string   "profile_sidebar_border_color"
    t.string   "profile_text_color"
    t.string   "profile_background_image_url"
    t.boolean  "profile_background_tiled"
    t.integer  "friends_count"
    t.integer  "statuses_count"
    t.integer  "followers_count"
    t.integer  "favourites_count"
    t.integer  "utc_offset"
    t.string   "time_zone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["access_secret"], :name => "index_users_on_access_secret"
  add_index "users", ["access_token"], :name => "index_users_on_access_token"
  add_index "users", ["login"], :name => "index_users_on_login"
  add_index "users", ["twitter_id"], :name => "index_users_on_twitter_id"

end
