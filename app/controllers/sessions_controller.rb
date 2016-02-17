# Controller Sessions
class SessionsController < ApplicationController
	def index
	end

	def create
		# Create user profile
		user = User.new(user_params)
		session[:user_id] = user.id

		# authenticate user's password
		if user && user.authenticate(params["user"][:password])
			session[:user_id] = user.id
			redirect_to '/users/%d' % session[:user_id]
		else
			flash[:errors] = ["Invalid"]
			redirect_to '/sessions/new'
		end
	end






	private
    def user_params
      params.require(:user).permit(:name, :email, :password)
    end


end
