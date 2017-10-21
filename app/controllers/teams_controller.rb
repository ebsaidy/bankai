class TeamsController < ApplicationController

	protect_from_forgery :except =>[:create]
	def create
		@add_team = Team.new(team_params)

		if @add_team.save
			flash[:success] = "Successfully added"

			redirect_to :controller => 'teams', :action => 'index'
		else
			render 'new'
		end
		
	end
	def new
		@team = Team.new
	end

	def index
		@select = Team.all 
	end

	def show
		@p = Team.where(id: params[:id]).first
		@t = Player.where(team_id: @p)
	end

	def destroy
		season = Team.find(params[:id])
		season.destroy
		flash[:success] = "Successfully Deleted"
		redirect_to (:back)
		
	end

	def get_players
		
		@p = Team.where(id: params[:id])#.first
		@t = Player.where(team_id: @p)
	end

	private
		def team_params
			params.permit(:name, :location, :created_date)
			#params.permit(:data)
	end
end
