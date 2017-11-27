# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(id: '1',first_name: 'Com', last_name: 'Pyutierre', department: 'MMM', rank: 'Assistant Instructor', contact_number: '9123456789', email: 'mail1@example.com', encrypted_password: "password") 
User.create(id: '2',first_name: 'Palma', last_name: 'Haul', department: 'CoE', rank: 'Professor', contact_number: '9333867460', email: 'mail2@example.com', encrypted_password: "password")
User.create(id: '3',first_name: 'Mang', last_name: 'Melchor', department: 'CE', rank: 'Instructor', contact_number: '9835583620', email: 'mail3@example.com', encrypted_password: "password")
User.create(id: '4',first_name: 'Romulo', last_name: 'Hall', department: 'ECE', rank: 'Instructor', contact_number: '9653778294', email: 'mail4@example.com', encrypted_password: "password")
User.create(id: '5',first_name: 'Alfred', last_name: 'Vargas', department: 'CS', rank: '5', contact_number: '9768465839', email: 'mail5@example.com', encrypted_password: "password")
User.create(id: '6',first_name: 'Alfred', last_name: 'Vargas', department: 'CS', rank: '5', contact_number: '9768465839', email: 'dean@example.com', encrypted_password: "password")
Researcher.create(id: '1',user_id: '1')
Researcher.create(id: '2',user_id: '2')
Admin.create(id: '1',user_id: '3')
CommitteeMember.create(id: '1',user_id: '4')
CommitteeMember.create(id: '2',user_id: '5')
Dean.create(id: '1',user_id: '6')