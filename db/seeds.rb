# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
require "date"
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.create(
  email: "marie@gmail",
  password: "azerty",
  first_name: "Marie",
  last_name: "Dupont",
  address: "Lille",
  phone_number: "0102030405"
)

user1 = User.create(
  email: "margaux@gmail",
  password: "azerty",
  first_name: "Margaux",
  last_name: "Durand",
  address: "Loos",
  phone_number: "0102030405"
)

user2 = User.create(
  email: "chloe@gmail",
  password: "azerty",
  first_name: "Chloe",
  last_name: "Dubard",
  address: "Lomme",
  phone_number: "0102030405"
)

user3 = User.create(
  email: "marion@gmail",
  password: "azerty",
  first_name: "Marion",
  last_name: "Lemoine",
  address: "Lille",
  phone_number: "0102030405"
)

user4 = User.create(
  email: "Marine@gmail",
  password: "azerty",
  first_name: "Marine",
  last_name: "Dupert",
  address: "Lille",
  phone_number: "0102030405"
)

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
