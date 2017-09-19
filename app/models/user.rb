class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :poker_enrolls
  has_many :poker_games, through: :poker_enrolls
  
  def total_income
    PokerEnroll.includes(:user).where(user_id: self.id).pluck(:profit).inject(0) do |sum, x|
      sum ||= 0
      x ||= 0
      sum + x
    end
  end

  def games_num
    PokerEnroll.where(user_id: self.id).count
  end
end
