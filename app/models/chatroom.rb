class Chatroom < ApplicationRecord
  has_many :messages, dependent: :destroy
  has_many :trips, dependent: :destroy
end
