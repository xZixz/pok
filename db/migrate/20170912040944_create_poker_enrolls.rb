class CreatePokerEnrolls < ActiveRecord::Migration[5.1]
  def change
    create_table :poker_enrolls do |t|
      t.references :poker_game, foreign_key: true
      t.references :user, foreign_key: true
      t.float :profit

      t.timestamps
    end
  end
end
