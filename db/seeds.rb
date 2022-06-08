# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
require "date"
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Trip.destroy_all

User.destroy_all

Rating.destroy_all

puts "Creating bookings"

rating = Rating.create
rating2 = Rating.create
rating3 = Rating.create
rating4 = Rating.create
rating5 = Rating.create

puts "create users"

user = User.create!(
  email: "marie@gmail",
  password: "azerty",
  first_name: "Marie",
  last_name: "Dupont",
  address: "Lille",
  phone_number: "0102030405",
  rating_id: rating.id
)

user1 = User.create!(
  email: "margaux@gmail",
  password: "azerty",
  first_name: "Margaux",
  last_name: "Durand",
  address: "Loos",
  phone_number: "0102030406",
  rating_id: rating1.id
)

user2 = User.create!(
  email: "chloe@gmail",
  password: "azerty",
  first_name: "Chloe",
  last_name: "Dubard",
  address: "Lomme",
  phone_number: "0102030407",
  rating_id: rating2.id
)

user3 = User.create!(
  email: "marion@gmail",
  password: "azerty",
  first_name: "Marion",
  last_name: "Lemoine",
  address: "Lille",
  phone_number: "0102030408",
  rating_id: rating3.id
)

user4 = User.create!(
  email: "marine@gmail",
  password: "azerty",
  first_name: "Marine",
  last_name: "Dupert",
  address: "Lille",
  phone_number: "0102030409",
  rating_id: rating4.id
)

user4 = User.create!(
  email: "marine@gmail",
  password: "azerty",
  first_name: "Marine",
  last_name: "Dupert",
  address: "Lille",
  phone_number: "0102030409",
  rating_id: rating5.id
)

chat1 = Chatroom.create!

puts "create trips"

trip = Trip.create!(
  starting_point: "Paris",
  ending_point: "Neuilly",
  date: Date.new(2022, 4, 7),
  time: Time.now,
  transport: "métro",
  user_id: user.id,
  chatroom_id: chat1.id
)

Booking.destroy_all

Booking.create!(
  trip_id: trip.id,
  user_id: user.id
)

Booking.create!(
  trip_id: trip.id,
  user_id: user1.id
)

Booking.create!(
  trip_id: trip.id,
  user_id: user2.id
)

Booking.create!(
  trip_id: trip.id,
  user_id: user3.id
)

Booking.create!(
  trip_id: trip.id,
  user_id: user4.id
)

puts "done"

chatroom1 = Chatroom.create
Trip.create(
  starting_point: "Paris",
  ending_point: "Neuilly",
  date: Date.new(2022, 4, 7),
  time: Time.now,
  transport: "Train",
  user_id: user.id,
  chatroom_id: chatroom.id
)

chatroom2 = Chatroom.create
Trip.create(
  starting_point: "Paris",
  ending_point: "Nanterre",
  date: Date.new(2022, 4, 7),
  time: Time.now,
  transport: "Pieton",
  user_id: user.id,
  chatroom_id: chatroom.id
)

chatroom3 = Chatroom.create
Trip.create(
  starting_point: "Paris 7eme",
  ending_point: "Paris 9eme",
  date: Date.new(2022, 4, 12),
  time: Time.now,
  transport: "Voiture",
  user_id: user.id,
  chatroom_id: chatroom.id
)

chatroom4 = Chatroom.create
Trip.create(
  starting_point: "Lille",
  ending_point: "Lomme",
  date: Date.new(2022, 4, 9),
  time: Time.now,
  transport: "Train",
  user_id: user.id,
  chatroom_id: chatroom.id
)

chatroom5 = Chatroom.create
Trip.create(
  starting_point: "Lille",
  ending_point: "Wambrechies",
  date: Date.new(2022, 4, 13),
  time: Time.now,
  transport: "métro",
  user_id: user.id,
  chatroom_id: chatroom.id
)
