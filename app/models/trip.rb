class Trip < ApplicationRecord
  has_many :bookings
  belongs_to :user
  belongs_to :chatroom
end
