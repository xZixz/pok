class CreateJoinTableUserAchievement < ActiveRecord::Migration[5.1]
  def change
    create_join_table :users, :achievements do |t|
      t.index [:user_id, :achievement_id]
      # t.index [:achievement_id, :user_id]
    end
  end
end
