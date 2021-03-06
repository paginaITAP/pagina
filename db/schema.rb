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

ActiveRecord::Schema.define(version: 20180718210402) do

  create_table "achivements", force: :cascade do |t|
    t.string   "title"
    t.string   "icon"
    t.text     "body"
    t.integer  "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "admins", force: :cascade do |t|
    t.string   "email",              default: "", null: false
    t.string   "encrypted_password", default: "", null: false
    t.integer  "sign_in_count",      default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.integer  "failed_attempts",    default: 0
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ckeditor_assets", force: :cascade do |t|
    t.string   "data_file_name",               null: false
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.string   "data_fingerprint"
    t.string   "type",              limit: 30
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.index ["type"], name: "index_ckeditor_assets_on_type"
  end

  create_table "comments", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "admin_id"
    t.integer  "news_id"
    t.integer  "newspapers_id"
    t.integer  "photos_id"
    t.integer  "teachers_id"
    t.integer  "videos_id"
    t.text     "body"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["admin_id"], name: "index_comments_on_admin_id"
    t.index ["news_id"], name: "index_comments_on_news_id"
    t.index ["newspapers_id"], name: "index_comments_on_newspapers_id"
    t.index ["photos_id"], name: "index_comments_on_photos_id"
    t.index ["teachers_id"], name: "index_comments_on_teachers_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
    t.index ["videos_id"], name: "index_comments_on_videos_id"
  end

  create_table "information", force: :cascade do |t|
    t.string   "title"
    t.text     "body"
    t.integer  "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "institutionals", force: :cascade do |t|
    t.string   "title"
    t.string   "icon"
    t.text     "body"
    t.integer  "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "managers", force: :cascade do |t|
    t.string   "title"
    t.text     "img"
    t.text     "body"
    t.integer  "visits_count"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "news", force: :cascade do |t|
    t.string   "title"
    t.text     "img"
    t.text     "body"
    t.integer  "visits_count"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "admin_id"
    t.integer  "user_id"
    t.integer  "category"
    t.index ["admin_id"], name: "index_news_on_admin_id"
    t.index ["user_id"], name: "index_news_on_user_id"
  end

  create_table "newspapers", force: :cascade do |t|
    t.string   "title"
    t.text     "img"
    t.text     "body"
    t.integer  "visits_count"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "admin_id"
    t.integer  "user_id"
    t.index ["admin_id"], name: "index_newspapers_on_admin_id"
    t.index ["user_id"], name: "index_newspapers_on_user_id"
  end

  create_table "photos", force: :cascade do |t|
    t.string   "title"
    t.text     "img"
    t.text     "body"
    t.integer  "visits_count"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "admin_id"
    t.integer  "user_id"
    t.index ["admin_id"], name: "index_photos_on_admin_id"
    t.index ["user_id"], name: "index_photos_on_user_id"
  end

  create_table "talents", force: :cascade do |t|
    t.string   "name"
    t.string   "img"
    t.text     "body"
    t.integer  "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teachers", force: :cascade do |t|
    t.string   "name"
    t.text     "img"
    t.text     "body"
    t.integer  "visits_count"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "admin_id"
    t.integer  "user_id"
    t.index ["admin_id"], name: "index_teachers_on_admin_id"
    t.index ["user_id"], name: "index_teachers_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "videos", force: :cascade do |t|
    t.string   "title"
    t.text     "img"
    t.text     "body"
    t.integer  "visits_count"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "admin_id"
    t.integer  "user_id"
    t.index ["admin_id"], name: "index_videos_on_admin_id"
    t.index ["user_id"], name: "index_videos_on_user_id"
  end

end
