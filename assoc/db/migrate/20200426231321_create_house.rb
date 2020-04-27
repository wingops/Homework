class CreateHouse < ActiveRecord::Migration[5.2]
  def change
    create_table :houses do |t|
      t.string :house_name, null: false
      t.integer :address_id, null: false

      t.timestamps
    end
  end
end
