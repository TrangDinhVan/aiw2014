class PlayersController < ApplicationController
  def index
  	@players = Player.all
  end

  def single
  	respond_to do |format|
      format.html
      format.js
    end
  end
  
  def show_modal
    @player = Player.find_all_by_id(params[:id])
    respond_to do |format|
      format.html
      format.js
    end
  end
  # API service
  respond_to :html, :xml, :json, :js
  def show
    @player = Player.find(params[:id])
    respond_with(@player) do |format|
      format.js  { render :json => @player, :callback => params[:callback] }
    end
  end

end
