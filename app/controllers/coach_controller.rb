class CoachController < ApplicationController
	protect_from_forgery :except =>[:create]
	def create
		@add_coach = Coach.new(coach_params)

		if @add_coach.save
			flash[:success] = "Successfully added"

			redirect_to :controller => 'coach', :action => 'index'
		else
			render 'new'
		end
		
	end
	def new
		@coach = Coach.new
	end

	def index
		@select = Coach.all 
	end

	def show
		
	end

	private
		def coach_params
			params.permit(:first_name, :middle_name, :last_name, :date_of_birth, :place_of_birth, :address)
			
	end
end