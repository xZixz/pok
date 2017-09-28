class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :poker_enrolls
  has_many :poker_games, through: :poker_enrolls
  
  def total_income
    PokerEnroll.where(user_id: self.id).sum(:profit)
  end

  def games_num
    PokerEnroll.where(user_id: self.id).count
  end
end
