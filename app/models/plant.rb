class Plant < ApplicationRecord
  belongs_to :user_plant

  validates :name, presence: true
  validates :specie, presence: true 
end
