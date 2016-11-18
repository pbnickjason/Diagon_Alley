class ChangeProjectsTagsToInteger < ActiveRecord::Migration
  def change
      remove_column :projects, :tags
      add_column :projects, :tags, :integer
  end
end
