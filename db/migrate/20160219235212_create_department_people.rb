class CreateDepartmentPeople < ActiveRecord::Migration
  def change
    create_table :department_people do |t|
      t.integer :department_id
      t.integer :person_id

      t.timestamps null: false
    end
  end
end
