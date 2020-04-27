class CreatePeople < ActiveRecord::Migration[5.2]
  def change
    create_table :people do |t|
      t.string :name 
      t.integer :house_id, null: false

      t.timestamp
    end
  end
end
