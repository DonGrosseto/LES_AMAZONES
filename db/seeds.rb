# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
require "date"
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Trip.destroy_all
Chatroom.destroy_all
Booking.destroy_all

user1 = User.create(
  email: "margaux@gmail",
  password: "azerty",
  first_name: "Margaux",
  last_name: "Durand",
  address: "Loos",
  phone_number: "0105798790"
)

user2 = User.create(
  email: "chloe@gmail",
  password: "azerty",
  first_name: "Chloe",
  last_name: "Dubard",
  address: "Lomme",
  phone_number: "0189009878"
)

user3 = User.create(
  email: "marion@gmail",
  password: "azerty",
  first_name: "Marion",
  last_name: "Lemoine",
  address: "Lille",
  phone_number: "0178657687"
)

user4 = User.create(
  email: "Marine@gmail",
  password: "azerty",
  first_name: "Marine",
  last_name: "Dupert",
  address: "Lille",
  phone_number: "0378987645"
)

user5 = User.create(
  email: "louise@gmail",
  password: "azerty",
  first_name: "Louise",
  last_name: "Paon",
  address: "Paris",
  phone_number: "0105708790"
)

chatroom1 = Chatroom.create
Trip.create(
  starting_point: "Paris",
  ending_point: "Neuilly",
  date: Date.new(2022, 4, 7),
  time: Time.now,
  transport: "Train",
  user_id: user1.id,
  chatroom_id: chatroom1.id
)

chatroom2 = Chatroom.create
Trip.create(
  starting_point: "Paris",
  ending_point: "Nanterre",
  date: Date.new(2022, 4, 7),
  time: Time.now,
  transport: "Pieton",
  user_id: user2.id,
  chatroom_id: chatroom2.id
)

chatroom3 = Chatroom.create
Trip.create(
  starting_point: "Paris 7eme",
  ending_point: "Paris 9eme",
  date: Date.new(2022, 4, 12),
  time: Time.now,
  transport: "Voiture",
  user_id: user3.id,
  chatroom_id: chatroom3.id
)

chatroom4 = Chatroom.create
Trip.create(
  starting_point: "Lille",
  ending_point: "Lomme",
  date: Date.new(2022, 4, 9),
  time: Time.now,
  transport: "Train",
  user_id: user4.id,
  chatroom_id: chatroom4.id
)

chatroom5 = Chatroom.create
Trip.create(
  starting_point: "Lille",
  ending_point: "Wambrechies",
  date: Date.new(2022, 4, 13),
  time: Time.now,
  transport: "métro",
  user_id: user5.id,
  chatroom_id: chatroom5.id
)
