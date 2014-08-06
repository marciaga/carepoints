class CaresController < ApplicationController
	
	# def new
	# 	@care = Care.new
	# end

	def create
		@user = User.find(params[:user_id])
		user_care = @user.cares.new(params.require(:care).permit(:care_item, :value))
		if user_care
			user_care.save
			redirect_to @user
		end
	end

	# def destroy
	# 	#@cares = @user.cares.destroy
	# 	redirect_to users_path
	# end
end
