class Review < ApplicationRecord
  belongs_to :booking
  belongs_to :user, through: :booking

  validates :rating, presence: true
  validates :description, presence: true 
end
