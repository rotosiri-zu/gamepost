class PcgameController < ApplicationController
  def index
    @games = Game.where(params[:id])
  end

  def show
  end

  def destroy
  end

  def edit
  end

  def update
  end
end
