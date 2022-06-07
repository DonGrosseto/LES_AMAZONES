class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :trip
  has_many :reports
end
