class Booking < ApplicationRecord
  belongs_to :garden
  belongs_to :user

  has_many :reviews

  validate :message, presence: true
end
