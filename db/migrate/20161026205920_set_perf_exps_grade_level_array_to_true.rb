class SetPerfExpsGradeLevelArrayToTrue < ActiveRecord::Migration
  def change
      remove_column :perf_exps, :grade_level, :string
      add_column :perf_exps, :grade_level, :string, array: true
  end
end
