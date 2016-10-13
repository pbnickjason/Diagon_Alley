class CreateStandards < ActiveRecord::Migration
  def change
    create_table :standards do |t|
      t.string :name
      t.string :description

      t.timestamps null: false
      
      t.references :parent, index: true
    end
  end
end
