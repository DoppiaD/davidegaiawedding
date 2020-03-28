# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning databases..."
User.delete_all
Guest.delete_all

puts "Creating seed of Users"
User.create!(email: 'ciccione@gmail.com', password: 'mellon')
u = User.create!(email: 'ciccia@gmail.com', password: 'mellon')

puts "Creating seed of Guests"
Guest.create!(user: u, name: "Bilbo", participate: true, last_name: "Baggings", allergies: "Goblins", shuttle_to: true, shuttle_from: false)
Guest.create!(user: u, name: "Frodo", participate: true, last_name: "Baggings", allergies: "Uruk Hai", shuttle_to: true, shuttle_from: true, child: true)

puts "Done!"
