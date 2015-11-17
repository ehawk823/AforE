class AddSpecialtiesToUser < ActiveRecord::Migration
  def change
    add_column :users, :specialties, :text
  end
end
