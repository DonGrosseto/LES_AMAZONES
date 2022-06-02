class Trip < ApplicationRecord
  has_many :bookings
  has_many :users, through: :bookings
  belongs_to :user
  belongs_to :chatroom

  validates :transport, inclusion: { in: ["piéton", "vélo", "voiture", "taxi", "métro"] }, presence: true
end
