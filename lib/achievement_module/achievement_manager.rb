module AchievementModule
  class AchievementManager
    include Singleton

    attr_accessor :achievements

    def initialize
      self.achievements = achievement_factory.all_achievements
    end

    def update_achievements_achievers
      self.achievements.each do |ach|
        ach.update_achievers
      end
    end

    protected
    def achievement_factory
      @achievement_factory ||= AchievementModule::AchievementFactory.new
    end
  end
end
