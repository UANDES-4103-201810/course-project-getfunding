# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user.create(email:"cerenchun@miuandes.cl", encrypted_password:"123456",reset_password_token:" ",reset_password_sent_at:" ",remember_created_at:"Date.now"
#t.integer "sign_in_count", default: 0, null: false
#t.datetime "current_sign_in_at"
#t.datetime "last_sign_in_at"
#t.string "current_sign_in_ip"
#t.string "last_sign_in_ip"
#t.boolean "admin"
#t.datetime "created_at", null: false
#t.datetime "updated_at", null: false
#t.index ["email"], name: "index_users_on_email", unique: true
#t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true