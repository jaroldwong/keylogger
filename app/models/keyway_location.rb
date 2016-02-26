class KeywayLocation < ActiveRecord::Base
  belongs_to :keyway
  belongs_to :location
end
