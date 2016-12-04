class AddGradeLevelsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :grade_levels, :string, array: true
  end
end
