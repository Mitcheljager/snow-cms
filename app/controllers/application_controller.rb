class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action do
    @main_menu_pages = Page.where(menu: 'main-menu')
    @footer_pages = Page.where(menu: 'footer-menu')
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user

  def authorize
    redirect_to '/login' unless current_user
  end
end
