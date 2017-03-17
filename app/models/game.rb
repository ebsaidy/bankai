class Game
  include Mongoid::Document
  
  field :date,              type: Date
  field :time,              type: DateTime
  field :location,          type: String


  has_many :goals, :class_name => 'Goal'
  has_many :assists, :class_name => 'Assist'
  has_many :booking, :class_name => 'Booking'
  belongs_to :season, :class_name => 'Season'
  has_and_belongs_to_many :teams, :class_name => 'Team'
  
end
