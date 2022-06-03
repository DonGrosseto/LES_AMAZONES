class Trip < ApplicationRecord
  has_many :bookings, dependent: :destroy
  has_many :users, through: :bookings
  belongs_to :user
  belongs_to :chatroom

  validates :transport, inclusion: { in: ["piéton", "vélo", "voiture", "taxi", "métro"] }, presence: true

  before_save :geocode_endpoints

  private
  #To enable Geocoder to works with multiple locations
  def geocode_endpoints
    coord_start=Geocoder.search(self.starting_point).first.coordinates
        self.latitude_start = coord_start[0]
        self.longitude_start = coord_start[1]

    coord_end=Geocoder.search(self.ending_point).first.coordinates
        self.latitude_end = coord_end[0]
        self.longitude_end = coord_end[1]
  end
end
