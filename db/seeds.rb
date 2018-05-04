# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user1 = User.create  :email => "admin@example.com", :password => "admin123", :admin => true
project1 = Project.create :User_id =>1, :name =>"Falcon Heavy",:description =>"Rocket to reach and colonise mars for yhe year 2033",:goal=>500000, :money_colected=>123210,:expiration_date =>" 2033-09-03",state:"waiting",start_date:"2018-09-02",created_at:false,updated_at:false
project2 = Project.create :User_id =>1, :name =>"Falcon 9",:description =>"Rocket to place satelites i orbit and test new technologies",:goal=>100000, :money_colected=>32000,:expiration_date =>" 2019-09-03",state:"waiting",start_date:"2018-09-02",created_at:false,updated_at:false
featured1 = Featured.create :Project_id => 1
featured2 = Featured.create :Project_id => 2