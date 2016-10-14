class CreateJoinTableStandardsPerfExps < ActiveRecord::Migration
  def change
    create_join_table :standards, :perf_exps do |t|
      t.index [:standard_id, :perf_exp_id]
      t.index [:perf_exp_id, :standard_id]
    end
  end
end
