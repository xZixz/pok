module AchievementModule
  class BaseAchievement
    attr_accessor :achievement

    def initialize
      self.achievement = Achievement.find_or_create_by name: self.name
    end

    def achievers
      self.achievement.reload.users.to_a
    end

    def newest_achievers
      []
    end

    def name
      "base"
    end

    def update_achievers
      self.achievement.users = self.newest_achievers
      self.achievement.save
    end
  end
end
