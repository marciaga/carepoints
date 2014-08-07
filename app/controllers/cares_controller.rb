class CaresController < ApplicationController
	
	def create
		@user = User.find(params[:user_id])
		user_care = @user.cares.new(params.require(:care).permit(:care_item, :value))
		if user_care
			user_care.save
			redirect_to @user
		end
	end

	def 

	def destroy	
		@user = User.find(params[:user_id])
		@care = @user.cares.find(params[:id]).delete
		redirect_to @user
	end
end
