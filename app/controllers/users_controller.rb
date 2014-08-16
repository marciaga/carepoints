class UsersController < ApplicationController
	def index
		@users = User.all
		@users = User.where(is_active: true)
	end

	def new
		@user = User.new		
	end	

	def create
		@user = User.new(params.require(:user).permit(:name, :email, :password, :password_confirmation))
		if @user.save
	  	#create a new session, thereby logging in the new user
	  	u = User.where(email: params[:user][:email]).first
	  	session[:user_id] = u.id.to_s
			redirect_to user_path(u.id)
		else
			render :new
		end
	end

	def show
		@user = User.find(params[:id])
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])
		if current_user != @user
			if current_user
				redirect_to user_path(current_user)
			elsif @user.is_active == false
				@user.update_attributes(params.require(:user).permit(:is_active))
				u = User.find(params[:id])
				session[:user_id] = u.id.to_s
				redirect_to user_path(u.id)	
			else 
				redirect_to new_session_path
			end
		elsif @user.update_attributes(params.require(:user).permit(:name, :email, :is_active))
			redirect_to user_path
		else 
			render :edit	
		end
	end

	def destroy
		@user = User.find(params[:id])
		@user.is_active = false
		@user.save
		#destroy session so user is automatically logged out
		reset_session
		redirect_to root_path
	end

	def reactivate
		@user = User.find(params[:id])
	end

end

