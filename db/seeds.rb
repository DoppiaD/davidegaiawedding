# require "open-uri"

puts "Cleaning databases..."
User.destroy_all
Guest.destroy_all
Honeymoon.destroy_all
Registry.destroy_all
# ActiveStorage::Attachment.all.each { |attachment| attachment.purge }

puts "Creating seed of Users"
c = User.create!(email: 'ciccione@gmail.com', password: 'mellon')
u = User.create!(email: 'ciccia@gmail.com', password: 'mellon')

puts "Fetching pictures"
# plus = File.open('app/assets/images/LOTR/Plus_one.png')
# temp.avatar.attach(io: sam, filename: 'Sam.png', content_type: 'image/png')

gandalf = 'Gandalf.png'
aragorn = 'Aragorn.png'
arwen = 'Arwen.png'
frodo = 'Frodo.png'
galadriel = 'Galadriel.png'
gimli = 'Gimli.png'
legolas = 'Legolas.png'
sam = 'Sam.png'
saruman = 'Saruman.png'

puts "Creating seed of Guests"
Guest.create!(user: u, name: "Bilbo", participate: true, last_name: "Baggings", allergies: "Goblins", shuttle_to: true, shuttle_from: false, avatar: gandalf)
Guest.create!(user: u, name: "Frodo", participate: false, last_name: "Baggings", allergies: "Uruk Hai", shuttle_to: true, shuttle_from: true, child: true, avatar: frodo)
Guest.create!(user: u, name: "Sam", participate: false, last_name: "Gamgee", allergies: "Uruk Hai", shuttle_to: true, shuttle_from: true, child: true, avatar: sam)

Guest.new(user: u).save(validate: false)

Guest.create!(user: c, name: "Samwise", participate: true, last_name: "Gamgee", allergies: "Brains", shuttle_to: false, shuttle_from: true, avatar: galadriel)

puts "Creating seed of Registries"
r = Registry.create!(activity: 'Swim with Dolphins', description: 'Ipsum lorem Dolphins!. We love this funny guys and gals.', value: 500, perk: "Original photo of a dolphin")
p = Registry.create!(activity: 'Hobbiton', description: 'Ipsum lorem Hobbits!. We love this funny guys and gals.', value: 50, perk: "Hobbit feets")
b = Registry.create!(activity: 'Bora Bora', description: 'Ipsum lorem Beach!. We love to swim and relax.', value: 1000, perk: "Stolen sand")

puts "Joining the honeymoon"
Honeymoon.create!(user: u, registry: r)
Honeymoon.create!(user: u, registry: p)
Honeymoon.create!(user: u, registry: b)
Honeymoon.create!(user: c, registry: r)

puts "Done!"
