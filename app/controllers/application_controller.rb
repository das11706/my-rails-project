class ApplicationController < ActionController::Base
  # before_action :logged_in_reader, only: [:edit, :update]
  protect_from_forgery with: :exception
  include SessionsHelper


  # def logged_in_reader
  #   unless logged_in?
  #     flash[:danger] = "Please log in."
  #     redirect_to login_path
  #   end
  # end

  # def current_user
  #   @user = session[:name] 
  # end
end
 