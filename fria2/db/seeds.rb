# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.create(first_name: 'Com', last_name: 'Pyutierre', department: 'MMM', rank: 'Assistant Instructor', contact_number: '9123456789', email: 'mail1@example.com', password: "password")
user.create_researcher()
user = User.create(first_name: 'Palma', last_name: 'Haul', department: 'CoE', rank: 'Professor', contact_number: '9333867460', email: 'mail2@example.com', password: "password")
user.create_researcher()
user = User.create(first_name: 'Mang', last_name: 'Melchor', department: 'CE', rank: 'Instructor', contact_number: '9835583620', email: 'mail3@example.com', password: "password")
user.create_admin()
user = User.create(first_name: 'Romulo', last_name: 'Hall', department: 'ECE', rank: 'Instructor', contact_number: '9653778294', email: 'mail4@example.com', password: "password")
user.create_committee_member()
user = User.create(first_name: 'Alfred', last_name: 'Vargas', department: 'CS', rank: '5', contact_number: '9768465839', email: 'mail5@example.com', password: "password")
user.create_committee_member()
user = User.create(first_name: 'Alfred', last_name: 'Vargas', department: 'CS', rank: '5', contact_number: '9768465839', email: 'dean@example.com', password: "password")
user.create_dean()
