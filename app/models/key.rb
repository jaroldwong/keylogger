class Key < ActiveRecord::Base
  belongs_to :person

  scope :unassigned, -> { where(issued: false, person_id: nil) }
  scope :missing, -> { where(issued: false) }
end
