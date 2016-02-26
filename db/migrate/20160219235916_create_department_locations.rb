class CreateDepartmentLocations < ActiveRecord::Migration
  def change
    create_table :department_locations do |t|
      t.integer :department_id
      t.integer :location_id

      t.timestamps null: false
    end
  end
end
