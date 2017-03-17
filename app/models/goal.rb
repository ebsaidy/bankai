class Goal
  include Mongoid::Document



  belongs_to :player, :class_name => 'Player'
  belongs_to :game, :class_name => 'Game'
  has_one :assist, :class_name => 'Assist'
  
end
