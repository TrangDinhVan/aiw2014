class ClubController < ApplicationController
  def index
  	@clubs = Club.all
  end
  def single
  	@club = Club.find(params[:id])
  end
  def show
  	@player = Player.find(params[:id])
  	respond_to do |format|
      format.html
      format.js
    end
  end
end
