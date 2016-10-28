class AddCodeToPerfExps < ActiveRecord::Migration
  def change
      add_column :perf_exps, :code, :string
  end
end
