class PlayerController < ApplicationController
  def index
  	@players = Player.all
  end
  def single
  	respond_to do |format|
      format.html
      format.js
    end
  end
end
