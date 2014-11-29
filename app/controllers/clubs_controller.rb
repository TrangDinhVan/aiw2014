class ClubsController < ApplicationController
  def index
    @clubs = Club.all
  end
  def single
    @club = Club.find(params[:id])
  end
  def show_modal
    @player = Player.find(params[:id])
    respond_to do |format|
      format.html
      format.js
    end
  end

  def search
    @clubs = Club.search(params[:search])
    @players = Player.search(params[:search])
  end
  # API service
  def show
    @club = Club.find(params[:id])
    respond_with(@club) do |format|
      format.js  { render :json => @club, :callback => params[:callback] }
    end
  end
    
end