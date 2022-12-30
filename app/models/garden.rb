class Garden < ApplicationRecord
  belongs_to :user

  has_many :plants

  validates :name, presence: true
  validates :description, presence: true
  validates :location, presence: true

  has_one_attached :picture

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
