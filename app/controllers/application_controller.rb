class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :init

  def information
  end

  def set_up_header
  end

  def setup_social

  end

  def init
  	@site_meta = Setting.first
  end

  def get_controller
  	params[:controller]
  end

  def get_action
  	params[:action]
  end
end