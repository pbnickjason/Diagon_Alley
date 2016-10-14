class Standard < ActiveRecord::Base
    has_many :children, :class_name => "Standard", :foreign_key => "parent_id"
    belongs_to :parent, :class_name => "Standard"
    accepts_nested_attributes_for :children
    has_and_belongs_to_many :perf_exps
    has_and_belongs_to_many :projects
    
    def path
        path = self.name
        current = self
        while (current.parent_id) do
            path = Standard.find(current.parent_id).name + "." + path
            current = Standard.find(current.parent_id)
        end
        return path
    end
end
