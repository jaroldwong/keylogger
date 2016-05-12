class Location < ActiveRecord::Base
  has_many :department_locations
  has_many :departments, through: :department_locations

  has_many :keyway_locations
  has_many :keyways, through: :keyway_locations
  
  attr_writer :keyings
  after_save :save_keyings
  
  def display_name
    self.building + ' ' + self.room
  end

  def keys
    Key.where(key_class: self.keyways.pluck(:key_class))
  end
  
  def keyings
    @keyings || keyways.pluck(:key_class).join(' ')
  end
  
  def save_keyings
    if @keyings
      self.keyways = @keyings.split.map do |keying|
        Keyway.find_or_create_by(key_class: keying)
      end
    end
  end
end
