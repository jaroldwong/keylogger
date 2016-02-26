class Person < ActiveRecord::Base
  has_many :department_people
  has_many :departments, through: :department_people

  has_many :person_roles
  has_many :roles, through: :person_roles
end
