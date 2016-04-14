class Location < ActiveRecord::Base
  has_many :department_locations
  has_many :departments, through: :department_locations

  has_many :keyway_locations
  has_many :keyways, through: :keyway_locations

  def display_name
    self.building + ' ' + self.room
  end

end
