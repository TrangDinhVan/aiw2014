class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :init

  def init
    @site_meta = Setting.first
    @members = Member.all
  end

  def get_controller
    params[:controller]
  end

  def get_action
    params[:action]
  end

  respond_to :html, :xml, :json, :js
  def query
    if( params[:q] == 'clubs' )
      render json: Club.get_query(params)
    elsif (params[:q] == 'players')
      render json: Player.get_query(params)
    end
  end

end