class AddPresenceValidationPerson < ActiveRecord::Migration[5.2]
  def change
    change_column :people, :name, :string, presence: true
  end
end
