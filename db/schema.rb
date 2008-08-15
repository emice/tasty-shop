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

ActiveRecord::Schema.define(:version => 20080810022946) do

  create_table "award_pools", :force => true do |t|
    t.string   "awardable_template_type"
    t.integer  "awardable_template_id",   :limit => 11
    t.integer  "quantity_available",      :limit => 11
    t.string   "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "award_qualifications", :force => true do |t|
    t.integer  "award_pool_id",          :limit => 11
    t.string   "qualifiable_award_type"
    t.integer  "qualifiable_award_id",   :limit => 11
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "awards", :force => true do |t|
    t.integer  "receiving_user_id", :limit => 11
    t.string   "awardable_type"
    t.integer  "awardable_id",      :limit => 11
    t.integer  "award_pool_id",     :limit => 11
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "canvas_visits", :force => true do |t|
    t.integer  "user_id",    :limit => 11
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "canvas_visits_awards", :force => true do |t|
    t.integer  "visited_days", :limit => 11
    t.integer  "total_days",   :limit => 11
    t.integer  "next_level",   :limit => 11
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cash_receipts", :force => true do |t|
    t.integer  "user_id",    :limit => 11
    t.integer  "value",      :limit => 11
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cash_templates", :force => true do |t|
    t.integer  "value",      :limit => 11
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "gifts", :force => true do |t|
    t.integer  "sending_user_id",   :limit => 11
    t.integer  "receiving_user_id", :limit => 11
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "gifts_awards", :force => true do |t|
    t.integer  "gifts_given", :limit => 11
    t.integer  "next_level",  :limit => 11
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "inventory_items", :force => true do |t|
    t.integer  "store_id",     :limit => 11
    t.integer  "ownership_id", :limit => 11
    t.integer  "asking_price", :limit => 11
    t.boolean  "friends_only"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "invitations_awards", :force => true do |t|
    t.integer  "invites_sent", :limit => 11
    t.integer  "next_level",   :limit => 11
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "offers", :force => true do |t|
    t.integer  "inventory_item_id", :limit => 11
    t.integer  "sending_user_id",   :limit => 11
    t.integer  "value",             :limit => 11
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ownerships", :force => true do |t|
    t.integer  "user_id",      :limit => 11
    t.string   "ownable_type"
    t.integer  "ownable_id",   :limit => 11
    t.integer  "value",        :limit => 11
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_designs", :force => true do |t|
    t.integer  "creating_user_id", :limit => 11
    t.string   "name"
    t.integer  "base_value",       :limit => 11
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_images", :force => true do |t|
    t.integer  "product_design_id", :limit => 11
    t.string   "content_type"
    t.string   "filename"
    t.string   "thumbnail"
    t.integer  "size",              :limit => 11
    t.integer  "width",             :limit => 11
    t.integer  "height",            :limit => 11
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", :force => true do |t|
    t.integer  "product_design_id", :limit => 11
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sales", :force => true do |t|
    t.integer  "store_id",        :limit => 11
    t.integer  "selling_user_id", :limit => 11
    t.integer  "buying_user_id",  :limit => 11
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "store_front_designs", :force => true do |t|
    t.integer  "creating_user_id", :limit => 11
    t.string   "name"
    t.integer  "base_value",       :limit => 11
    t.integer  "left_image_id",    :limit => 11
    t.integer  "top_image_id",     :limit => 11
    t.integer  "right_image_id",   :limit => 11
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "store_front_images", :force => true do |t|
    t.string   "content_type"
    t.string   "filename"
    t.string   "thumbnail"
    t.integer  "size",         :limit => 11
    t.integer  "width",        :limit => 11
    t.integer  "height",       :limit => 11
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "store_fronts", :force => true do |t|
    t.integer  "store_front_id", :limit => 11
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stores", :force => true do |t|
    t.string   "name"
    t.integer  "store_front_id", :limit => 11
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "transactions", :force => true do |t|
    t.integer  "user_id",           :limit => 11
    t.string   "transactable_type"
    t.integer  "transactable_id",   :limit => 11
    t.string   "receivable_type"
    t.integer  "receivable_id",     :limit => 11
    t.integer  "net_value",         :limit => 11
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.integer  "facebook_id",               :limit => 11
    t.string   "session_key"
    t.integer  "inviting_user_id",          :limit => 11
    t.integer  "invitations_award_level",   :limit => 11
    t.integer  "gifts_award_level",         :limit => 11
    t.integer  "canvas_visits_award_level", :limit => 11
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
