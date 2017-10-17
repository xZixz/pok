module AchievementModule
  class AchievementManager
    include Singleton

    attr_accessor :achievements

    ACHIEVEMENT_TYPES = [TOP_SCORE = "top_score",
                         WORST_SCORE = "worst_score"]

    def initialize
      self.achievements = []
      ACHIEVEMENT_TYPES.each do |at|
        self.achievements << achievement_from_type(at)
      end
    end

    def achievement_from_type(type)
      if type == TOP_SCORE
        Achievement::TopScoreAchievement.new
      elsif type == WORST_SCORE
        Achievement::WorstScoreAchievement.new
      else
        NilAchievement.new
      end
    end

    def update_achievements_achievers
      self.achievements.each do |ach|
        ach.update_achievers
      end
    end
  end
end
