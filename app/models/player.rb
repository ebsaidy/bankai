class Player
  include Mongoid::Document
  
  field :first_name,        type: String
  field :middle_name,       type: String
  field :last_name,         type: String
  field :date_of_birth,     type: Date
  field :place_of_birth,    type: String
  field :address,           type: String

  belongs_to :team,   :class_name => 'Team'
  has_many :goals,    :class_name => 'Goal'
  has_many :assists,  :class_name => 'Assist'
  has_many :bookings, :class_name => 'Booking'

  def transfer t
    self.team = t
    self.save!
  end

end
