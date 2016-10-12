class Standard < ActiveRecord::Base
    has_many :children, :class_name => "Standard", :foreign_key => "parent_id"
    belongs_to :parent, :class_name => "Standard"
    accepts_nested_attributes_for :children
end
