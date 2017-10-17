module AchievementModule
  class TopScoreAchievement
    attr_accessor :achievement

    def initialize
      self.achievement = Achievement.find_or_create_by name: "top_score"
    end

    def update_achievers
      self.achievement.users = self.newest_achievers
      self.achievement.save
    end

    def newest_achievers
      sql_string = "select query1.user_id as id, sum_profit from (select user_id, sum(profit) as sum_profit from poker_enrolls group by user_id) query1, (select max(query2.sum_profit) as max_sum_profit from (select user_id, sum(profit) as sum_profit from poker_enrolls group by user_id) query2) query3 where query1.sum_profit=query3.max_sum_profit"
      achievers = User.find_by_sql(sql_string)
    end

    def achievers
      self.achievement.users
    end
  end
end
