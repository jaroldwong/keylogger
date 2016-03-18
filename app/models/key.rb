class Key < ActiveRecord::Base
  belongs_to :person

  scope :unassigned, -> { where(issued: false, person_id: 1) }
  scope :missing, -> { where(issued: false) }
end
