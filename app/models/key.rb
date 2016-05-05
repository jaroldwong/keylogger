class Key < ActiveRecord::Base
  belongs_to :person

  scope :assigned, -> { where.not(person_id: 1) }
  scope :unassigned, -> { where(person_id: 1) }
  scope :missing, -> { where(missing: true) }

  def display_name
    self.serial_no + ' ' + self.key_class
  end

  def keyways
    Keyway.where(key_class: self.key_class)
  end

  def locations
    keyways.map{|l| l.locations}.flatten.uniq.map{|l| l.display_name}
  end
end
