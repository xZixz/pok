class PokerGamesController < ApplicationController
  def new
    @poker_game = PokerGame.new
  end

  def index
    @poker_games = PokerGame.all
  end

  def create
    poker_game = PokerGame.create(create_params)
    if poker_game.save
      flash[:notice] = "New Poker Game created!"
    else
      flash[:alert] = "Can not create new Poker Game"
    end
    redirect_to poker_games_path
  end

  private
  def create_params
    params[:poker_game].permit(:date, user_ids: [])
  end
end
