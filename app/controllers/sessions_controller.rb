class SessionsController < ApplicationController
	before_action :logged_user, only: [:new, :create]
	before_action :require_user, except: [:new, :create]
	def new
	end

	def create
		@user = User.find_by_email(params[:session][:email])
		if @user && @user.authenticate(params[:session][:password])
			session[:user_id] = @user.id
			redirect_to '/show'
		else
			redirect_to '/'
			flash[:invalid_login] = "Your email or password is incorrect"
		end
	end

	def show
		@groups = Group.all.order(:representative)
	end

	def destroy
		session[:user_id] = nil
		redirect_to '/'
	end

end
