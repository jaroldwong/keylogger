class Role < ActiveRecord::Base
  has_many :person_roles
  has_many :people, through: :person_roles
end
