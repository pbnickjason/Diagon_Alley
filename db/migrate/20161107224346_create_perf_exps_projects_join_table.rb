class CreatePerfExpsProjectsJoinTable < ActiveRecord::Migration
  def change
    create_join_table :perf_exps, :projects do |t|
      t.index :perf_exp_id
      t.index :project_id
    end
  end
end
