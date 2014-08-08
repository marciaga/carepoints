class CaresController < ApplicationController
	
	def create
		@user = User.find(params[:user_id])
		user_care = @user.cares.new(params.require(:care).permit(:care_item, :value))
		if user_care
			user_care.save
			redirect_to @user
		end
	end

	def edit
		@user = User.find(params[:user_id])
		@care = @user.cares.find(params[:id])
	end

	def update
		@user = User.find(params[:user_id])
		@care = @user.cares.find(params[:id])
		@care.update_attributes(params.require(:care).permit(:care_item, :value))
		redirect_to user_path(params[:user_id])
	end

	def destroy	
		@user = User.find(params[:user_id])
		@care = @user.cares.find(params[:id]).delete
		redirect_to @user
	end
end

