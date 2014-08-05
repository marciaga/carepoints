class CaresController < ApplicationController
	# def index
	# 	@cares = Care.all
	# end
	def create
		@user = User.find(params[:user_id])
		@care = @user.cares.create!(params[:care_item	])
		redirect_to @user
	end
end
