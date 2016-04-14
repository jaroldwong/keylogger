class Person < ActiveRecord::Base
  searchkick autocomplete: ['name']

  has_many :department_people
  has_many :departments, through: :department_people

  has_many :person_roles
  has_many :roles, through: :person_roles

  has_many :keys
end
