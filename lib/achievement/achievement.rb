module Achievement
  class Achievement


    ACHIEVEMENT_TYPES = [TOP_SCORE = "top_score",
                         WORST_SCORE = "worst_score"]

    def self.achievement_from_type(type)
      if type == TOP_SCORE
        TopScoreAchievement.new
      elsif type == WORST_SCORE
        WorstScoreAchievement.new
      else
        NilAchievement.new
      end
    end

    def self.achievements_of_user(user)
      result = []
      Achievement::ACHIEVEMENT_TYPES.each do |at|
        achievement = Achievement.achievement_from_type(at)
        result << achievement if achievement.achievers.include? user
      end
      result
    end
  end
end
