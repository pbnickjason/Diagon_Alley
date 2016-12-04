class PerfExp < ActiveRecord::Base
    has_and_belongs_to_many :standards
    has_and_belongs_to_many :projects
    has_many :users, through: :projects

    scope :grade_level, -> (grade_level) { where grade_level: grade_level }
    scope :named, -> (name) { where name: name }
    scope :excluding, -> (*values) {
        where(
            "#{table_name}.id NOT IN (?)", (
                values.compact.flatten.map { |e|
                    if e.is_a?(Integer)
                        e
                    else
                        e.is_a?(self) ? e.id : raise("Element not the same type as #{self}.")
                    end
                } << 0
            )
        )
    }
end
