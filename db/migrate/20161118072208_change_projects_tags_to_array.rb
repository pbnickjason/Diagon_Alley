class ChangeProjectsTagsToArray < ActiveRecord::Migration
  def change
      remove_column :projects, :tags
      add_column :projects, :tags, :integer, array: true, default: []
  end
end
