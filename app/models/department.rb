class Department < ActiveRecord::Base
  has_many :department_locations
  has_many :locations, through: :department_locations

  has_many :department_people
  has_many :people, through: :department_people
end
