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
puts "1"

URI.open("https://images.unsplash.com/photo-1503185912284-5271ff81b9a8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1600&q=80")
user = User.create!(
  email: "marie@gmail.com",
  password: "azerty",
  first_name: "Marie",
  last_name: "Dupont",
  address: "Lille",
  phone_number: "0102030405",
  rating_id: rating.id
)
puts "2"
file = URI.open("https://images.unsplash.com/photo-1503185912284-5271ff81b9a8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80")
margaux = User.create!(
  email: "margaux@gmail.com",
  password: "azerty",
  first_name: "Margaux",
  last_name: "Durand",
  address: "Loos",
  phone_number: "0102030406",
  rating_id: rating1.id
)
puts "3"
margaux.photo.attach(io: file, filename: "margaux.png", content_type: "image/png")
margaux.save

file = URI.open("https://images.unsplash.com/photo-1599842057874-37393e9342df?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80")
chloe = User.create!(
  email: "chloe@gmail.com",
  password: "azerty",
  first_name: "Chloe",
  last_name: "Dubard",
  address: "Lomme",
  phone_number: "0102030407",
  rating_id: rating2.id
)

chloe.photo.attach(io: file, filename: "chloe.png", content_type: "image/png")
chloe.save
puts "4"
file = URI.open("https://images.unsplash.com/photo-1524250502761-1ac6f2e30d43?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=688&q=80")
marion = User.create!(
  email: "marion@gmail.com",
  password: "azerty",
  first_name: "Marion",
  last_name: "Lemoine",
  address: "Lille",
  phone_number: "0102030408",
  rating_id: rating3.id
)

marion.photo.attach(io: file, filename: "marion.png", content_type: "image/png")
marion.save
puts "5"
file = URI.open("https://images.unsplash.com/photo-1563132337-f159f484226c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80")
marine = User.create!(
  email: "marine@gmail.com",
  password: "azerty",
  first_name: "Marine",
  last_name: "Dupert",
  address: "Lille",
  phone_number: "0102030409",
  rating_id: rating4.id
)

marine.photo.attach(io: file, filename: "marine.png", content_type: "image/png")
marine.save
puts "6"
file = URI.open("https://images.unsplash.com/photo-1531123414780-f74242c2b052?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80")
marjorie = User.create!(
  email: "marjorie@gmail.com",
  password: "azerty",
  first_name: "Marjorie",
  last_name: "Delbrand",
  address: "herlies",
  phone_number: "0104556432",
  rating_id: rating5.id
)

marjorie.photo.attach(io: file, filename: "marjorie.png", content_type: "image/png")
marjorie.save
puts "7"
file = URI.open("https://images.unsplash.com/photo-1502764613149-7f1d229e230f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1472&q=80")
megane = User.create!(
  email: "megane@gmail.com",
  password: "azerty",
  first_name: "Megane",
  last_name: "Dubarry",
  address: "hellemes",
  phone_number: "0104506542",
  rating_id: rating6.id
)

megane.photo.attach(io: file, filename: "megane.png", content_type: "image/png")
megane.save
puts "8"
file = URI.open("https://images.unsplash.com/photo-1574297500578-afae55026ff3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2787&q=80")
clemence = User.create!(
  email: "clemence@gmail.com",
  password: "azerty",
  first_name: "Clémence",
  last_name: "Dessac",
  address: "roubaix",
  phone_number: "0104446542",
  rating_id: rating7.id
)

clemence.photo.attach(io: file, filename: "clemence.png", content_type: "image/png")
clemence.save
puts "9"
file = URI.open("https://media.istockphoto.com/photos/pretty-woman-alone-with-nature-picture-id808214016?k=20&m=808214016&s=612x612&w=0&h=1JPPMLRjk4xaVO7rJ8yeqes2wH6qPHLP94a11G4HRu4=")
melanie = User.create!(
  email: "melanie@gmail.com",
  password: "azerty",
  first_name: "Mélanie",
  last_name: "lederé",
  address: "hellemes",
  phone_number: "0104506542",
  rating_id: rating8.id
)

melanie.photo.attach(io: file, filename: "melanie.png", content_type: "image/png")
melanie.save
puts "10"
file = URI.open("https://images.unsplash.com/photo-1492106087820-71f1a00d2b11?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80")
julie = User.create!(
  email: "julie@gmail.com",
  password: "azerty",
  first_name: "Julie",
  last_name: "Delpierre",
  address: "hellemes",
  phone_number: "0104506542",
  rating_id: rating9.id
)

julie.photo.attach(io: file, filename: "julie.png", content_type: "image/png")
julie.save
puts "11"
file = URI.open("https://images.unsplash.com/photo-1519713880332-91cfe19a59dd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80")
stephanie = User.create!(
  email: "stephanie@gmail.com",
  password: "azerty",
  first_name: "Stéphanie",
  last_name: "holoski",
  address: "haubourdin",
  phone_number: "0344506542",
  rating_id: rating10.id
)

stephanie.photo.attach(io: file, filename: "stephanie.png", content_type: "image/png")
stephanie.save
puts "users done"
puts "create chatroom"
chatroom1 = Chatroom.create
chatroom2 = Chatroom.create
chatroom3 = Chatroom.create
chatroom4 = Chatroom.create
chatroom5 = Chatroom.create
chatroom6 = Chatroom.create
chatroom7 = Chatroom.create
chatroom8 = Chatroom.create
chatroom9 = Chatroom.create
chatroom10 = Chatroom.create
chatroom = Chatroom.create

puts "chatroom done"

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
  user_id: margaux.id,
  chatroom_id: chatroom2.id
)

trip2 = Trip.create!(
  starting_point: "Herlies",
  ending_point: "Lille",
  date: Date.new(2022, 4, 9),
  time: Time.now,
  transport: "voiture",
  user_id: chloe.id,
  chatroom_id: chatroom3.id
)

trip3 = Trip.create!(
  starting_point: "Lille",
  ending_point: "Paris",
  date: Date.new(2022, 4, 10),
  time: Time.now,
  transport: "voiture",
  user_id: marion.id,
  chatroom_id: chatroom4.id
)

trip4 = Trip.create!(
  starting_point: "Lille",
  ending_point: "Loos",
  date: Date.new(2022, 4, 2),
  time: Time.now,
  transport: "vélo",
  user_id: marine.id,
  chatroom_id: chatroom5.id
)

trip5 = Trip.create!(
  starting_point: "Herlies",
  ending_point: "Lompret",
  date: Date.new(2022, 4, 2),
  time: Time.now,
  transport: "taxi",
  user_id: marjorie.id,
  chatroom_id: chatroom6.id
)

trip6 = Trip.create!(
  starting_point: "Paris 7éme",
  ending_point: "Paris 9éme",
  date: Date.new(2022, 4, 9),
  time: Time.now,
  transport: "taxi",
  user_id: megane.id,
  chatroom_id: chatroom7.id
)

trip7 = Trip.create!(
  starting_point: "Lille",
  ending_point: "Wambrechies",
  date: Date.new(2022, 4, 7),
  time: Time.now,
  transport: "métro",
  user_id: clemence.id,
  chatroom_id: chatroom8.id
)

trip8 = Trip.create!(
  starting_point: "Paris 5eme",
  ending_point: "Paris 16eme",
  date: Date.new(2022, 4, 8),
  time: Time.now,
  transport: "métro",
  user_id: melanie.id,
  chatroom_id: chatroom9.id
)

trip9 = Trip.create!(
  starting_point: "Paris 11eme",
  ending_point: "Paris 17eme",
  date: Date.new(2022, 4, 6),
  time: Time.now,
  transport: "métro",
  user_id: julie.id,
  chatroom_id: chatroom10.id
)

trip10 = Trip.create!(
  starting_point: "Paris 12eme",
  ending_point: "Paris 18eme",
  date: Date.new(2022, 4, 6),
  time: Time.now,
  transport: "métro",
  user_id: stephanie.id,
  chatroom_id: chatroom.id
)

puts "bookings done !"

Booking.destroy_all


Booking.create!(
  trip_id: trip.id,
  user_id: user.id,
)
Booking.create!(
  trip_id: trip1.id,
  user_id: user.id,
)
Booking.create!(
  trip_id: trip2.id,
  user_id: user.id,
)

Booking.create!(
  trip_id: trip1.id,
  user_id: marjorie.id,
)

Booking.create!(
  trip_id: trip2.id,
  user_id: marjorie.id
)

Booking.create!(
  trip_id: trip1.id,
  user_id: marine.id
)

Booking.create!(
  trip_id: trip.id,
  user_id: marine.id
)

Booking.create!(
  trip_id: trip2.id,
  user_id: marine.id
)

puts "bookings done"
