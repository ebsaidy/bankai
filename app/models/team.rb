class Team
  include Mongoid::Document
  
  field :name,          type: String
  field :created_date,  type: Date
  field :location,      type: String

  has_many :players, :class_name => 'Player'
  has_many :coaches, :class_name => 'Coach'
  belongs_to :season, :class_name => 'Season'
  belongs_to :league, :class_name => 'League'

  has_and_belongs_to_many :games, :class_name => 'Game'

  def promote(league)
    self.league = league
    self.season = league.seasons.last
    self.save!
  end

end
