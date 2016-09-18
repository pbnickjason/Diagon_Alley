class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
        
        t.timestamps null: false
        t.string :name
        t.string :image
    end
  end
end
