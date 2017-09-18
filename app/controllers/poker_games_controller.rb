class PokerGamesController < ApplicationController
  before_action :get_poker_game, only: [:edit, :update]

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

  def edit
    
  end

  def update
    if @poker_game.update_attributes(update_params)
      redirect_to  poker_games_url
    else
      flash[:alert] = "Failed updating"
      render "edit"
    end
  end

  private
  def update_params
    params[:poker_game].permit(:date, user_ids: [])
  end

  def create_params
    params[:poker_game].permit(:date, user_ids: [])
  end

  def get_poker_game
    @poker_game = PokerGame.where(id: params[:id]).first
  end
end
