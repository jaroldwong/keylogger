class CreateKeyways < ActiveRecord::Migration
  def change
    create_table :keyways do |t|
      t.string :key_class

      t.timestamps null: false
    end
  end
end
