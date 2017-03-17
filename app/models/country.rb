class Country
  include Mongoid::Document

  field :name,          type: String

  has_many :leagues, :class_name => 'League'
end