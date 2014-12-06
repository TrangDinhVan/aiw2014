class HomeController < ApplicationController
  # La Liga Page
  def laliga
  end

  # Site Service
  respond_to :html, :xml, :json, :js
  def query
    if( params[:q] == 'clubs' )
      # render json: Club.get_query(params)
      @players_set = Club.get_query(params)
      @hash = {:clubs => @players_set}
      render :json => @hash
    elsif (params[:q] == 'players')
      # render json: Player.get_query(params)
      @clubs_set = Player.get_query(params)
      @hash = {:players => @clubs_set}
      render :json => @hash
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