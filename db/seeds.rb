# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(email:"admin1@miuandes.cl", encrypted_password:"123456",admin:true,)
#Project.create( User_id:1,name:"Falcon Heavy",description:"this is a temporary description,this is a temporary description",goal:100000,money_colected:0,expiration_date:" ",state:" ",start_date:" ",created_at:false,updated_at:false)
#Project.create( User_id:1,name:"Falcon Heavy 2",description:"this is a temporary description,this is a temporary description",goal:100000,money_colected:0,expiration_date:" ",state:" ",start_date:" ",created_at:false,updated_at:false)