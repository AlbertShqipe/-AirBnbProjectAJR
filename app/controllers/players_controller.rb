class PlayersController < ApplicationController
  def index
    @players = Player.all
  end

  def show
    @player = Player.find(params[:id])
  end

  def new
    @player = Player.new
  end

  def create
    @player = Player.new(player_params)
    @player.save
    redirect_to player_path(@player)
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def player_params
    params.require(:player).permit(:name, :postion, :age, :address, :nationality, :height, :foot, :club, :market_value, :price_per_day, :photo)
  end
end
