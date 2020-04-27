class DropAddressTable < ActiveRecord::Migration[5.2]
  def change
    drop_table :addresses
    remove_column :houses, :address_id
  end
end
