class Key < ActiveRecord::Base
  belongs_to :person

  scope :unassigned, -> { where(issued: false, person_id: 1) }
  scope :missing, -> { where(issued: false) }

  def keyways
    Keyway.where(key_class: self.key_class)
  end

  def locations
    keyways.map{|l| l.locations}.flatten.uniq.map{|l| l.display_name}
  end
end
