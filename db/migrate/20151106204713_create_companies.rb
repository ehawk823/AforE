class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.text :description
      t.text :challenges
      t.timestamps null: false
    end
  end
end
