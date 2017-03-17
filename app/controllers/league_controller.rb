class LeagueController < ApplicationController

  def create
    league = League.new(params[:data])
    league.save!

  end
end