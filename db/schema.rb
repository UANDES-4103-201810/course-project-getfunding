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

ActiveRecord::Schema.define(version: 20180429215005) do

  create_table "categories", force: :cascade do |t|
    t.integer "User_id"
    t.integer "Project_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Project_id"], name: "index_categories_on_Project_id"
    t.index ["User_id"], name: "index_categories_on_User_id"
  end

  create_table "descriptive_pages", force: :cascade do |t|
    t.integer "Project_id"
    t.string "link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Project_id"], name: "index_descriptive_pages_on_Project_id"
  end

  create_table "featureds", force: :cascade do |t|
    t.integer "Project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Project_id"], name: "index_featureds_on_Project_id"
  end

  create_table "images", force: :cascade do |t|
    t.integer "Project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Project_id"], name: "index_images_on_Project_id"
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

  create_table "projects", force: :cascade do |t|
    t.integer "User_id"
    t.string "name"
    t.text "description"
    t.integer "goal"
    t.integer "money_colected"
    t.date "expiration_date"
    t.string "state"
    t.date "start_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["User_id"], name: "index_projects_on_User_id"
  end

  create_table "promises", force: :cascade do |t|
    t.integer "Project_id"
    t.integer "value"
    t.string "condition"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Project_id"], name: "index_promises_on_Project_id"
  end

  create_table "sessions", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_buys_promises", force: :cascade do |t|
    t.integer "User_id"
    t.integer "Promise_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Promise_id"], name: "index_user_buys_promises_on_Promise_id"
    t.index ["User_id"], name: "index_user_buys_promises_on_User_id"
  end

  create_table "user_funds_projects", force: :cascade do |t|
    t.integer "User_id"
    t.integer "Project_id"
    t.integer "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Project_id"], name: "index_user_funds_projects_on_Project_id"
    t.index ["User_id"], name: "index_user_funds_projects_on_User_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password"
    t.boolean "admin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "videos", force: :cascade do |t|
    t.integer "Project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Project_id"], name: "index_videos_on_Project_id"
  end

  create_table "wishlists", force: :cascade do |t|
    t.integer "User_id"
    t.integer "Project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Project_id"], name: "index_wishlists_on_Project_id"
    t.index ["User_id"], name: "index_wishlists_on_User_id"
  end

end
