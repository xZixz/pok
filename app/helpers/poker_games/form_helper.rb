module PokerGames::FormHelper
  def setup_poker_game(poker_game)
    (User.all - poker_game.users).each do |user|
      poker_game.poker_enrolls.build(user: user)
    end
    poker_game
  end
end
