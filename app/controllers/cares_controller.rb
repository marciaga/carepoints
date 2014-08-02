class CaresController < ApplicationController
	def index
		@cares = Care.all
	end
end
