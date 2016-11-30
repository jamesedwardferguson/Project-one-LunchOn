class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :fetch_user
  
  def fetch_user
    @current_user = User.find_by(:id => session[:user_id]) if session[:user_id]
    session[:user_id] = nil unless @current_user.present?
    # If in the session hash, there is a user_id key
    # Find the user with that ID and save them in an instance variable called @current_user
    # If you weren't able to find a user with that ID, set session[:user_id] to nil
  end

end
