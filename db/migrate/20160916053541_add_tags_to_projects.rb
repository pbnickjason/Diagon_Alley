class AddTagsToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :tags, :string, array: true, default: []
  end
end
