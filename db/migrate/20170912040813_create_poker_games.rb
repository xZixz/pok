class CreatePokerGames < ActiveRecord::Migration[5.1]
  def change
    create_table :poker_games do |t|
      t.datetime :date

      t.timestamps
    end
  end
end
