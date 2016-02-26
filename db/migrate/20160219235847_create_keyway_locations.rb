class CreateKeywayLocations < ActiveRecord::Migration
  def change
    create_table :keyway_locations do |t|
      t.string :key_class
      t.integer :location_id

      t.timestamps null: false
    end
  end
end
