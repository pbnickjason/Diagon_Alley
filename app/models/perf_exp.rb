class PerfExp < ActiveRecord::Base
    has_and_belongs_to_many :standards
    has_and_belongs_to_many :projects
    has_many :users, through: :projects
end
