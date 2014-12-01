class ClubsController < ApplicationController
  def index
    @clubs = Club.all
  end
  
  def single
    @club = Club.find(params[:id])
  end

  # API service
  def show
    @club = Club.find(params[:id])
    respond_with(@club) do |format|
      format.js  { render :json => @club, :callback => params[:callback] }
    end
  end
    
end