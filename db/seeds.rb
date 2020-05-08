# require "open-uri"

puts "Cleaning databases..."
User.destroy_all
Guest.destroy_all
Honeymoon.destroy_all
Registry.destroy_all
ActiveStorage::Attachment.all.each { |attachment| attachment.purge }

puts "Creating seed of Users"
c = User.create!(email: 'ciccione@gmail.com', password: 'mellon')
u = User.create!(email: 'ciccia@gmail.com', password: 'mellon')

puts "Fetching pictures"
plus_one = File.open('app/assets/images/LOTR/Plus_one.png')
gandalf = File.open('app/assets/images/LOTR/Gandalf.png')
aragorn = File.open('app/assets/images/LOTR/Aragorn.png')
arwen = File.open('app/assets/images/LOTR/Arwen.png')
frodo = File.open('app/assets/images/LOTR/Frodo.png')
galadriel = File.open('app/assets/images/LOTR/Galadriel.png')
gimli = File.open('app/assets/images/LOTR/Gimli.png')
legolas = File.open('app/assets/images/LOTR/Legolas.png')
sam = File.open('app/assets/images/LOTR/Sam.png')
saruman = File.open('app/assets/images/LOTR/Saruman.png')

puts "Creating seed of Guests"
b1 = Guest.create!(user: u, name: "Bilbo", participate: true, last_name: "Baggings", allergies: "Goblins", shuttle_to: true, shuttle_from: false)
b1.avatar.attach(io: gandalf, filename: "Gandalf.png", content_type: "image/png")

b2 = Guest.create!(user: u, name: "Frodo", participate: false, last_name: "Baggings", allergies: "Uruk Hai", shuttle_to: true, shuttle_from: true, child: true)
b2.avatar.attach(io: frodo, filename: 'Frodo.png', content_type: 'image/png')

b3 = Guest.create!(user: u, name: "Sam", participate: false, last_name: "Baggings", allergies: "Uruk Hai", shuttle_to: true, shuttle_from: true, child: true, )
b3.avatar.attach(io: sam, filename: 'Sam.png', content_type: 'image/png')

empty = Guest.new(user: u).save(validate: false)
empty.avatar.attach(io: plus_one, filename: 'Plus_one.png', content_type: 'image/png')

Guest.create!(user: c, name: "Samwise", participate: true, last_name: "Gamgee", allergies: "Brains", shuttle_to: false, shuttle_from: true)

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
