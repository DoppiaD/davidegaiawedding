# require "open-uri"

puts "Cleaning databases..."
User.destroy_all
Guest.destroy_all
Registry.destroy_all
UserRegistry.destroy_all
# ActiveStorage::Attachment.all.each { |attachment| attachment.purge }

puts "Creating seed of Users"
c = User.create!(email: 'ciccione@gmail.com', password: 'mellon')
u = User.create!(email: 'ciccia@gmail.com', password: 'mellon')

puts "Fetching pictures"
# plus = File.open('app/assets/images/LOTR/Plus_one.png')
# temp.avatar.attach(io: sam, filename: 'Sam.png', content_type: 'image/png')

aragorn = GuestsController::AVATARS[0]
arwen = GuestsController::AVATARS[1]
frodo = GuestsController::AVATARS[2]
galadriel = GuestsController::AVATARS[3]
gandalf = GuestsController::AVATARS[4]
gimli = GuestsController::AVATARS[5]
legolas = GuestsController::AVATARS[6]
sam = GuestsController::AVATARS[7]
saruman = GuestsController::AVATARS[8]

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
UserRegistry.create!(user: u, registry: r)
UserRegistry.create!(user: u, registry: p)
UserRegistry.create!(user: u, registry: b)
UserRegistry.create!(user: c, registry: r)

puts "Done!"
