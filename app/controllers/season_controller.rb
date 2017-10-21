class SeasonController < ApplicationController
	protect_from_forgery :except =>[:create]
	def create
		@add_season = Season.new(season_params)

		if @add_season.save
			flash[:success] = "Successfully added"

			redirect_to :controller => 'season', :action => 'index'
		else
			render 'new'
		end
		
	end
	def new
		@team = Season.new
	end

	def index
		@select = Season.all 
	end

	def show
		
	end

	def destroy
		season = Season.find(params[:id])
		season.destroy
		flash[:success] = "Successfully Deleted"
		redirect_to (:back)
	end

	private
		def season_params
			params.permit(:name, :start_date, :end_date)
			#params.permit(:data)
	end
end