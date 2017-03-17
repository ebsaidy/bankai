class Coach
  include Mongoid::Document
  
  field :first_name,        type: String
  field :middle_name,       type: String
  field :last_name,         type: String
  field :date_of_birth,     type: Date
  field :place_of_birth,    type: String
  field :address,           type: String
  
end
