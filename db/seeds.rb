# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning databases..."
User.destroy_all
Guest.destroy_all
Honeymoon.destroy_all
Registry.destroy_all

puts "Creating seed of Users"
c = User.create!(email: 'ciccione@gmail.com', password: 'mellon')
u = User.create!(email: 'ciccia@gmail.com', password: 'mellon')

puts "Creating seed of Guests"
Guest.create!(user: u, name: "Bilbo", participate: true, last_name: "Baggings", allergies: "Goblins", shuttle_to: true, shuttle_from: false)
Guest.create!(user: u, name: "Frodo", participate: false, last_name: "Baggings", allergies: "Uruk Hai", shuttle_to: true, shuttle_from: true, child: true)
Guest.create!(user: u, name: "Frodo2", participate: false, last_name: "Baggings", allergies: "Uruk Hai", shuttle_to: true, shuttle_from: true, child: true)
Guest.new(user: u).save(validate: false)

Guest.create!(user: c, name: "Samwise", participate: true, last_name: "Gamgee", allergies: "Brains", shuttle_to: false, shuttle_from: true)

puts "Creating seed of Registries"
r = Registry.create!(activity: 'Swim with Dolphins', description: 'Ipsum lorem Dolphins!. We love this funny guys and gals.', value: 500, perk: "Original photo of a dolphin")

puts "Joining the honeymoon"
Honeymoon.create!(user: u, registry: r)
Honeymoon.create!(user: c, registry: r)

puts "Done!"
