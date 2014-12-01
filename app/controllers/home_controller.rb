class HomeController < ApplicationController
  respond_to :html, :xml, :json, :js
  def query
    if( params[:q] == 'clubs' )
      render json: Club.get_query(params)
    elsif (params[:q] == 'players')
      render json: Player.get_query(params)
    end
  end
  def service
  end
end