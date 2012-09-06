class SessionsController < ApplicationController
	def new		
	end
	def create
		user = User.find_by_email(params[:session][:email].downcase)
		if user && user.authenticate(params[:session][:password])
			#sign in
			sign_in user
			redirect_to user
		else
			#render new with error messages
			flash.now[:error] = "Invalid email/password combo"
			render 'new'		
		end		
	end
	def destroy		
		sign_out
		flash[:info] = "Thanks for visiting"
		redirect_to root_url
	end
end