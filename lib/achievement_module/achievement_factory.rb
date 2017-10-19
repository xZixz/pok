module AchievementModule
  class AchievementFactory
    def initialize
     # TODO 
    end

    def achievement_from_type(type)
      self.achievements_hash[type]
    end

    def achievements_hash
      unless @achievements_hash
        @achievements_hash = {}
        achievement_klasses.each do |ach_klass|
          @achievements_hash.merge!(ach_klass.name => ach_klass.new)
        end
      end
      @achievements_hash
    end

    def all_achievements
      self.achievements_hash.values
    end

    def achievement_klasses
      [
        AchievementModule::BestScoreInAGameAchievement,
        AchievementModule::NilAchievement,
        AchievementModule::TopScoreAchievement,
        AchievementModule::WorstScoreAchievement
      ]
    end
  end
end
