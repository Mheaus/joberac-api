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

ActiveRecord::Schema.define(version: 2018_09_15_162608) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "announces", force: :cascade do |t|
    t.string "title"
    t.string "address"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.string "excerpt"
    t.index ["user_id"], name: "index_announces_on_user_id"
  end

  create_table "announces_tags", force: :cascade do |t|
    t.bigint "announces_id"
    t.bigint "tags_id"
    t.index ["announces_id"], name: "index_announces_tags_on_announces_id"
    t.index ["tags_id"], name: "index_announces_tags_on_tags_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_roles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "phone"
    t.string "position"
    t.string "headline"
    t.string "name"
    t.string "firstname"
    t.string "lastname"
    t.string "company_name"
    t.string "banner_url"
    t.string "photo_url"
    t.text "description"
    t.bigint "user_role_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["user_role_id"], name: "index_users_on_user_role_id"
  end

  create_table "users_tags", force: :cascade do |t|
    t.bigint "users_id"
    t.bigint "tags_id"
    t.index ["tags_id"], name: "index_users_tags_on_tags_id"
    t.index ["users_id"], name: "index_users_tags_on_users_id"
  end

  add_foreign_key "announces", "users"
  add_foreign_key "announces_tags", "announces", column: "announces_id"
  add_foreign_key "announces_tags", "tags", column: "tags_id"
  add_foreign_key "users", "user_roles"
  add_foreign_key "users_tags", "tags", column: "tags_id"
  add_foreign_key "users_tags", "users", column: "users_id"
end
