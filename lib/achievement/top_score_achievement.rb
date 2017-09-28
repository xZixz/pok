module Achievement
  class TopScoreAchievement < Achievement::Achievement
    def achievers
      PokerEnroll.group(:user_id).sum(:profit).sort_by{ |k, v| v }.reverse.first
    end
  end
end
