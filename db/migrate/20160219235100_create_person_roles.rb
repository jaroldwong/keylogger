class CreatePersonRoles < ActiveRecord::Migration
  def change
    create_table :person_roles do |t|
      t.integer :person_id
      t.integer :role_id

      t.timestamps null: false
    end
  end
end
