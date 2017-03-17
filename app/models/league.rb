class Leauge
  include Mongoid::Document
  
  field :name,          type: String
  
  has_many :seasons, :class_name => 'Season'
end
