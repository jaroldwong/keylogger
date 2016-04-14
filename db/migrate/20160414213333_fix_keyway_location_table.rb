class FixKeywayLocationTable < ActiveRecord::Migration
  def change
    remove_column :keyway_locations, :key_class
    add_column :keyway_locations, :keyway_id, :integer
  end
end
