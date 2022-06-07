class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :reports, dependent: :destroy
  has_many :bookings, dependent: :destroy
  has_many :ratings, through: :bookings, dependent: :destroy
  has_many :messages, dependent: :destroy
  has_many :trips, dependent: :destroy

  has_one_attached :photo
end
