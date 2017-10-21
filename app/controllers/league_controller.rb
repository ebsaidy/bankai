class LeagueController < ApplicationController

  # def create
  #   league = League.new(params[:data])
  #   league.save!

  # end

  protect_from_forgery :except =>[:create]
	def create
		@add_league = League.new(league_params)

		if @add_league.save
			flash[:success] = "Successfully added"

			redirect_to :controller => 'league', :action => 'index'
		else
			render 'new'
		end
		
	end
	def new
		@league = League.new
	end

	def index
		@select = League.all 
	end

	def show
		
	end

	def destroy
		league = League.find(params[:id])
		league.destroy
		flash[:success] = "Successfully Deleted"
		redirect_to (:back)
	end

	private
		def league_params
			params.permit(:name)
			#params.permit(:data)
	end
end