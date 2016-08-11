class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
        
        t.timestamps null: false
        
        # project title and description
        t.string :title, null: false, default: ""
        t.text :description, default: ""
        
        # we are going to need a merchant account
        t.decimal :price
        
        # until we build the itemization system
        t.text :contents
    end
  end
end
