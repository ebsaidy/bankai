class PlayerController < ApplicationController

	protect_from_forgery :except =>[:create]
	def create
		@add_player = Player.new(player_params)

		if @add_player.save
			flash[:success] = "Successfully added"

			redirect_to :controller => 'player', :action => 'index'
		else
			render 'new'
		end
		
	end
	def new
		@player = Player.new
		@team = Team.all
	end

	def index
		@select = Player.all 
		#@i = @select.id
		@p = Player.where(id: params[:id]).first
		@t = Team.where(team_id: @p)
		

		
	end

	def show
		
	end

	def destroy
		player = Player.find(params[:id])
		player.destroy
		flash[:success] = "Successfully Deleted"
		redirect_to (:back)
	end

	private
		def player_params
			params.permit(:first_name, :middle_name, :last_name, :date_of_birth, :place_of_birth, :address, :team_id)
			#params.permit(:data)
	end
end