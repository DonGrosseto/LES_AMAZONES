# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
require "date"
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# puts "destroy messages"
# Message.destroy_all

# puts "destroy chatroom"
# Chatroom.destroy_all
# puts "chatroom done"

# puts "destroy trips"
# Trip.destroy_all

puts "destroy all"
User.destroy_all

puts "all destroy"

puts "create users"
file = URI.open('https://images.unsplash.com/photo-1522075469751-3a6694fb2f61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2960&q=80')
amaury = User.new(
  email: "amaury@gmail",
  password: "azerty",
  first_name: "Amaury",
  last_name: "Dupont",
  address: "Lille",
  phone_number: "0102030405"
)
amaury.photo.attach(io: file, filename: 'amaury.png', content_type: 'image/png')
amaury.save

file = URI.open('https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=60&raw_url=true&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cG9ydHJhaXR8ZW58MHx8MHx8&auto=format&fit=crop&w=800')
benjamin = User.new(
  email: "benjamin@gmail",
  password: "azerty",
  first_name: "Benjamin",
  last_name: "Durand",
  address: "Loos",
  phone_number: "0102030406"
)
benjamin.photo.attach(io: file, filename: 'benjamin.png', content_type: 'image/png')
benjamin.save

file = URI.open('https://images.unsplash.com/photo-1552374196-c4e7ffc6e126?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=60&raw_url=true&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8cG9ydHJhaXR8ZW58MHx8MHx8&auto=format&fit=crop&w=800')
marco = User.new(
  email: "marco@gmail",
  password: "azerty",
  first_name: "Marco",
  last_name: "Dubard",
  address: "Lomme",
  phone_number: "0102030407"
)
marco.photo.attach(io: file, filename: 'marco.png', content_type: 'image/png')
marco.save

file = URI.open("https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=60&raw_url=true&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjV8fHBvcnRyYWl0fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800")
mickael = User.create!(
  email: "mickael@gmail",
  password: "azerty",
  first_name: "Mickael",
  last_name: "Lemoine",
  address: "Lille",
  phone_number: "0102030408"
)
mickael.photo.attach(io: file, filename: 'mickael.png', content_type: 'image/png')
mickael.save

chat1 = Chatroom.create!

puts "create trips"
trip = Trip.create!(
  starting_point: "Paris",
  ending_point: "Neuilly",
  date: Date.new(2022, 7, 7),
  time: Time.now,
  transport: "métro",
  user_id: amaury.id,
  chatroom_id: chat1.id
)

trip2 = Trip.create!(
  starting_point: "Lille",
  ending_point: "Loos",
  date: Date.new(2022, 4, 4),
  time: Time.now,
  transport: "piéton",
  status: "Terminé",
  user_id: marco.id,
  chatroom_id: chat1.id
)

Booking.destroy_all

puts "Creating bookings"
rating = Rating.create
rating2 = Rating.create
rating3 = Rating.create
rating4 = Rating.create


Booking.create!(
  trip_id: trip.id,
  user_id: amaury.id,
  rating_id: rating.id
)

Booking.create!(
  trip_id: trip.id,
  user_id: benjamin.id,
  rating_id: rating2.id
)

Booking.create!(
  trip_id: trip2.id,
  user_id: marco.id,
  rating_id: rating3.id
)

Booking.create!(
  trip_id: trip2.id,
  user_id: mickael.id,
  rating_id: rating4.id
)



puts "done"


# chatroom1 = Chatroom.create
# Trip.create(
#   starting_point: "Paris",
#   ending_point: "Neuilly",
#   date: Date.new(2022, 4, 7),
#   time: Time.now,
#   transport: "Train",
#   user_id: user.id,
#   chatroom_id: chatroom.id
# )

# chatroom2 = Chatroom.create
# Trip.create(
#   starting_point: "Paris",
#   ending_point: "Nanterre",
#   date: Date.new(2022, 4, 7),
#   time: Time.now,
#   transport: "Pieton",
#   user_id: user.id,
#   chatroom_id: chatroom.id
# )

# chatroom3 = Chatroom.create
# Trip.create(
#   starting_point: "Paris 7eme",
#   ending_point: "Paris 9eme",
#   date: Date.new(2022, 4, 12),
#   time: Time.now,
#   transport: "Voiture",
#   user_id: user.id,
#   chatroom_id: chatroom.id
# )

# chatroom4 = Chatroom.create
# Trip.create(
#   starting_point: "Lille",
#   ending_point: "Lomme",
#   date: Date.new(2022, 4, 9),
#   time: Time.now,
#   transport: "Train",
#   user_id: user.id,
#   chatroom_id: chatroom.id
# )

# chatroom5 = Chatroom.create
# Trip.create(
#   starting_point: "Lille",
#   ending_point: "Wambrechies",
#   date: Date.new(2022, 4, 13),
#   time: Time.now,
#   transport: "métro",
#   user_id: user.id,
#   chatroom_id: chatroom.id
# )
