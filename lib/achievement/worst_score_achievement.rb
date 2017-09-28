module Achievement
  class WorstScoreAchievement < Achievement::Achievement
    def achievers
      if max_arr = PokerEnroll.group(:user_id).order('sum_profit asc').sum(:profit).first
      else
        []
      end
    end
  end
end
