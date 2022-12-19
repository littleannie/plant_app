class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :gardens, dependent: :destroy
  has_many :user_plants, dependent: :destroy
  has_many :plants, through: :user_plant
  has_many :bookings, dependent: :destroy
  has_many :reviews, through: :booking
  has_many :messages
  has_many :chatmembers
  has_many :chatrooms, through: :chatmembers

end
