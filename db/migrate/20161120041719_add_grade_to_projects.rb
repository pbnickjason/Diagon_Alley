class AddGradeToProjects < ActiveRecord::Migration
  def change
      add_column :projects, :grade_level, :string
  end
end
