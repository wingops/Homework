class PersonNameHouseAddressContraints < ActiveRecord::Migration[5.2]
  def change
    change_column :people, :name, :string, presence: true
    change_column :houses, :address, :text, presence: true
  end
end
