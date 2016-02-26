class CreateKeys < ActiveRecord::Migration
  def change
    create_table :keys do |t|
      t.string :serial_no
      t.string :key_class
      t.integer :person_id
      t.boolean :issued

      t.timestamps null: false
    end
  end
end
