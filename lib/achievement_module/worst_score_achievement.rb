module AchievementModule
  class WorstScoreAchievement < AchievementModule::BaseAchievement

    def newest_achievers
      sql_string = "select query1.user_id as id, sum_profit from (select user_id, sum(profit) as sum_profit from poker_enrolls group by user_id) query1, (select min(query2.sum_profit) as min_sum_profit from (select user_id, sum(profit) as sum_profit from poker_enrolls group by user_id) query2) query3 where query1.sum_profit=query3.min_sum_profit"
      achievers = User.find_by_sql(sql_string)
    end

    def name
     "worst_score" 
    end
  end
end
