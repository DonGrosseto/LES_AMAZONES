# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
require "date"
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.create(
  email: "mickael@gmail",
  password: "azerty",
  first_name: "Mickael",
  last_name: "Couderc",
  address: "Lille",
  phone_number: "0102030405"
)
chatroom = Chatroom.create
Trip.create(
  starting_point: "Paris",
  ending_point: "Neuilly",
  date: Date.new(2022, 4, 7),
  time: Time.now,
  transport: "Train",
  user_id: user.id,
  chatroom_id: chatroom.id
)
