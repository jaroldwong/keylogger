class Keyway < ActiveRecord::Base
  has_many :keyway_locations
  has_many :locations, through: :keyway_locations
end
