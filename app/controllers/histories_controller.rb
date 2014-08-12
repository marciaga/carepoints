class HistoriesController < ApplicationController

	def create
		@user = User.find(params[:user_id])
		user_history = @user.histories.new(params.require(:history).permit(:date, :care_item, :value))
		if user_history.save
			redirect_to @user
		end
	end
end
