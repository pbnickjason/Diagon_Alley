class PerfExp < ActiveRecord::Base
    has_and_belongs_to_many :standards
end
