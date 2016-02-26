class Role < ActiveRecord::Base
  has_many :people
  has_many :people, through: :person_roles
end
