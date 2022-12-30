class Garden < ApplicationRecord
  belongs_to :user

  has_many :plants

  validates :name, presence: true
  validates :description, presence: true
  validates :location, presence: true

  has_one_attached :picture
end
