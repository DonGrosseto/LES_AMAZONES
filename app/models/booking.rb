class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :trip
  belongs_to :rating
  has_many :reports
end
