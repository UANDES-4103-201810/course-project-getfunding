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

ActiveRecord::Schema.define(version: 20180411222609) do

  create_table "admin_administrate_proyects", force: :cascade do |t|
    t.integer "Admin_id"
    t.integer "Proyect_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Admin_id"], name: "index_admin_administrate_proyects_on_Admin_id"
    t.index ["Proyect_id"], name: "index_admin_administrate_proyects_on_Proyect_id"
  end

  create_table "admins", force: :cascade do |t|
    t.integer "User_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["User_id"], name: "index_admins_on_User_id"
  end

  create_table "descriptive_pages", force: :cascade do |t|
    t.integer "Proyect_id"
    t.string "link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Proyect_id"], name: "index_descriptive_pages_on_Proyect_id"
  end

  create_table "images", force: :cascade do |t|
    t.integer "Proyect_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Proyect_id"], name: "index_images_on_Proyect_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.integer "User_id"
    t.string "name"
    t.string "nacionality"
    t.integer "age"
    t.string "sex"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["User_id"], name: "index_profiles_on_User_id"
  end

  create_table "promises", force: :cascade do |t|
    t.integer "Proyect_id"
    t.integer "value"
    t.text "condition"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Proyect_id"], name: "index_promises_on_Proyect_id"
  end

  create_table "proyects", force: :cascade do |t|
    t.integer "User_id"
    t.string "name"
    t.text "description"
    t.string "category"
    t.integer "goal"
    t.integer "money_colected"
    t.date "expiration_date"
    t.string "state"
    t.date "start_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["User_id"], name: "index_proyects_on_User_id"
  end

  create_table "user_buys_promises", force: :cascade do |t|
    t.integer "User_id"
    t.integer "Promise_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Promise_id"], name: "index_user_buys_promises_on_Promise_id"
    t.index ["User_id"], name: "index_user_buys_promises_on_User_id"
  end

  create_table "user_funds_proyects", force: :cascade do |t|
    t.integer "User_id"
    t.integer "Proyect_id"
    t.integer "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Proyect_id"], name: "index_user_funds_proyects_on_Proyect_id"
    t.index ["User_id"], name: "index_user_funds_proyects_on_User_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password"
    t.string "user_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "videos", force: :cascade do |t|
    t.integer "Proyect_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Proyect_id"], name: "index_videos_on_Proyect_id"
  end

end
