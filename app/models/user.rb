class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :reports
  has_many :bookings
  has_many :ratings, through: :bookings
  has_many :messages
  has_many :trips, dependent: :destroy

  has_one_attached :photo
end
