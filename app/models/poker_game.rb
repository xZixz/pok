class PokerGame < ApplicationRecord
  has_many :poker_enrolls
  has_many :users, through: :poker_enrolls

  accepts_nested_attributes_for :poker_enrolls,
    allow_destroy: true
end
