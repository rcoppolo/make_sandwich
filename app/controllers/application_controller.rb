class ApplicationController < ActionController::Base
  protect_from_forgery

	private
	def current_user
		return nil if @current_user === false
		@current_user || User.find(session[:user_id]) if session[:user_id] || false
	end

	helper_method :current_user
end
