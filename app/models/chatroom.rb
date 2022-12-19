class Chatroom < ApplicationRecord
  has_many :chatmembers
  has_many :messages
end
