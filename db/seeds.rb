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
rating1 = Rating.create
rating2 = Rating.create
rating3 = Rating.create
rating4 = Rating.create
rating5 = Rating.create
rating6 = Rating.create
rating7 = Rating.create
rating8 = Rating.create
rating9 = Rating.create
rating10 = Rating.create

puts "create users"

URI.open("https://unsplash.com/photos/A77FAov-OzI")
user = User.create!(
  email: "marie@gmail.com",
  password: "azerty",
  first_name: "Marie",
  last_name: "Dupont",
  address: "Lille",
  phone_number: "0102030405",
  rating_id: rating.id
)

URI.open("https://unsplash.com/photos/RDcEWH5hSDE")
user1 = User.create!(
  email: "margaux@gmail.com",
  password: "azerty",
  first_name: "Margaux",
  last_name: "Durand",
  address: "Loos",
  phone_number: "0102030406",
  rating_id: rating1.id
)

URI.open("https://unsplash.com/photos/RtVGS4vGkgM")
user2 = User.create!(
  email: "chloe@gmail.com",
  password: "azerty",
  first_name: "Chloe",
  last_name: "Dubard",
  address: "Lomme",
  phone_number: "0102030407",
  rating_id: rating2.id
)

URI.open("https://unsplash.com/photos/00ByEXKcSkA")
user3 = User.create!(
  email: "marion@gmail.com",
  password: "azerty",
  first_name: "Marion",
  last_name: "Lemoine",
  address: "Lille",
  phone_number: "0102030408",
  rating_id: rating3.id
)

URI.open("https://unsplash.com/photos/AzVexpHvuKY")
user4 = User.create!(
  email: "marine@gmail.com",
  password: "azerty",
  first_name: "Marine",
  last_name: "Dupert",
  address: "Lille",
  phone_number: "0102030409",
  rating_id: rating4.id
)

URI.open("https://unsplash.com/photos/LWkFHEGpleE")
user5 = User.create!(
  email: "marjorie@gmail.com",
  password: "azerty",
  first_name: "Marjorie",
  last_name: "Delbrand",
  address: "herlies",
  phone_number: "0104556432",
  rating_id: rating5.id
)

URI.open("https://unsplash.com/photos/OExQjtxbIpE")
user6 = User.create!(
  email: "megane@gmail.com",
  password: "azerty",
  first_name: "Megane",
  last_name: "Dubarry",
  address: "hellemes",
  phone_number: "0104506542",
  rating_id: rating6.id
)

URI.open("https://unsplash.com/photos/KrR7xEn4HV8")
user7 = User.create!(
  email: "clemence@gmail.com",
  password: "azerty",
  first_name: "Clémence",
  last_name: "Dessac",
  address: "roubaix",
  phone_number: "0104446542",
  rating_id: rating7.id
)

URI.open("https://unsplash.com/photos/niH7Z81S44g")
user8 = User.create!(
  email: "melanie@gmail.com",
  password: "azerty",
  first_name: "Mélanie",
  last_name: "lederé",
  address: "hellemes",
  phone_number: "0104506542",
  rating_id: rating8.id
)

URI.open("https://unsplash.com/photos/tLKOj6cNwe0")
user9 = User.create!(
  email: "julie@gmail.com",
  password: "azerty",
  first_name: "Julie",
  last_name: "Delpierre",
  address: "hellemes",
  phone_number: "0104506542",
  rating_id: rating9.id
)

URI.open("https://unsplash.com/photos/EGXESvDSAFY")
user10 = User.create!(
  email: "stephanie@gmail.com",
  password: "azerty",
  first_name: "Stéphanie",
  last_name: "holoski",
  address: "haubourdin",
  phone_number: "0344506542",
  rating_id: rating10.id
)

puts "create trips"

trip = Trip.create!(
  starting_point: "Haubourdin",
  ending_point: "Lomme",
  date: Date.new(2022, 4, 7),
  time: Time.now,
  transport: "vélo",
  user_id: user.id,
  chatroom_id: chatroom1.id
)

trip1 = Trip.create!(
  starting_point: "Lille",
  ending_point: "Lomme",
  date: Date.new(2022, 4, 8),
  time: Time.now,
  transport: "piéton",
  user_id: user.id,
  chatroom_id: chatroom2.id
)

trip2 = Trip.create!(
  starting_point: "Herlies",
  ending_point: "Lille",
  date: Date.new(2022, 4, 9),
  time: Time.now,
  transport: "voiture",
  user_id: user.id,
  chatroom_id: chatroom3.id
)

trip3 = Trip.create!(
  starting_point: "Lille",
  ending_point: "Paris",
  date: Date.new(2022, 4, 10),
  time: Time.now,
  transport: "voiture",
  user_id: user.id,
  chatroom_id: chatroom4.id
)

trip4 = Trip.create!(
  starting_point: "Lille",
  ending_point: "Loos",
  date: Date.new(2022, 4, 2),
  time: Time.now,
  transport: "vélo",
  user_id: user.id,
  chatroom_id: chatroom5.id
)

trip5 = Trip.create!(
  starting_point: "Herlies",
  ending_point: "Lompret",
  date: Date.new(2022, 4, 2),
  time: Time.now,
  transport: "taxi",
  user_id: user.id,
  chatroom_id: chatroom6.id
)

trip5 = Trip.create!(
  starting_point: "Paris 7éme",
  ending_point: "Paris 9éme",
  date: Date.new(2022, 4, 12),
  time: Time.now,
  transport: "taxi",
  user_id: user.id,
  chatroom_id: chatroom7.id
)

trip5 = Trip.create!(
  starting_point: "Lille",
  ending_point: "Wambrechies",
  date: Date.new(2022, 4, 12),
  time: Time.now,
  transport: "métro",
  user_id: user.id,
  chatroom_id: chatroom8.id
)

Booking.destroy_all

Booking.create!(
  trip_id: trip.id,
  user_id: user1.id,
)

Booking.create!(
  trip_id: trip1.id,
  user_id: user3.id,
)

Booking.create!(
  trip_id: trip2.id,
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

puts "bookings done"

chatroom1 = Chatroom.create
Trip.create(
  starting_point: "Haubourdin",
  ending_point: "Lomme",
  date: Date.new(2022, 4, 7),
  time: Time.now,
  transport: "vélo",
  user_id: user.id,
  chatroom_id: chatroom.id
)

chatroom2 = Chatroom.create
Trip.create(
  starting_point: "Lille",
  ending_point: "Lomme",
  date: Date.new(2022, 4, 8),
  time: Time.now,
  transport: "pieton",
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
  date: Date.new(2022, 4, 12),
  time: Time.now,
  transport: "métro",
  user_id: user.id,
  chatroom_id: chatroom.id
)

chatroom6 = Chatroom.create
Trip.create(
  starting_point: "Herlies",
  ending_point: "Lompret",
  date: Date.new(2022, 4, 2),
  time: Time.now,
  transport: "taxi",
  user_id: user.id,
  chatroom_id: chatroom.id
)
