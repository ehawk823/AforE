class AddNameToSpecialties < ActiveRecord::Migration
  def change
    add_column :specialties, :name, :string
  end
end
