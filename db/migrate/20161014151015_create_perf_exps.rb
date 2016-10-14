class CreatePerfExps < ActiveRecord::Migration
  def change
    create_table :perf_exps do |t|
      t.string :name
      t.string :description
      t.string :grade_level

      t.timestamps null: false
    end
  end
end
