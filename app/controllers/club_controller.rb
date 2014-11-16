class ClubController < ApplicationController
  def index
  	@clubs = Club.all
  end
  def single
  	@club = Club.find(params[:id])
  end
end
