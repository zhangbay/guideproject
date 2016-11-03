class SessionsController < ApplicationController
	def login
	end
	def login_attempt
		auth_user = User.authenticate(params[:email],params[:login_password])

		if auth_user
			session[:userid] = auth_user.id
			flash[:notice] = "Welcome back"
			redirect_to
		else
			flash[:notice] = "Try Again"
			redirect_to login
		end
	end
end
