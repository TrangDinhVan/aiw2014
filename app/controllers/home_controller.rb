class HomeController < ApplicationController
  # Site Service
  respond_to :html, :xml, :json, :js
  def query
    if( params[:q] == 'clubs' )
      render json: Club.get_query(params)
    elsif (params[:q] == 'players')
      render json: Player.get_query(params)
    end
  end

  # Service page
  def service
  end

  # Search Page
  def search
    @clubs = Club.search(params[:search])
    @players = Player.search(params[:search])
  end
end