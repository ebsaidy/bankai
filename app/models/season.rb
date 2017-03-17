class Season
  include Mongoid::Document
  
  field :name,          type: String
  field :start_date,    type: Date
  field :end_date,      type: Date

  has_many :teams, :class_name => 'Team'
end
