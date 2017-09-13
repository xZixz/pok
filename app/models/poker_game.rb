class PokerGame < ApplicationRecord
  has_many :poker_enrolls
  has_many :users, through: :poker_enrolls
end
