# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(email:"cerenchun2@miuandes.cl", encrypted_password:"123456",reset_password_token:" ",reset_password_sent_at:" ",remember_created_at:" ",sign_in_count:" ",current_sign_in_at:"",last_sign_in_at:"",current_sign_in_ip:"",last_sign_in_ip:"",admin:false,created_at:false,updated_at: false)