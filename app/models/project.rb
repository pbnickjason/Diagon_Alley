class Project < ActiveRecord::Base
    has_and_belongs_to_many :standards
    belongs_to :user
    
    def self.search(search)
    where("title iLIKE ? OR summary iLIKE ?", "%#{search}%", "%#{search}%") 
    #where("summary LIKE ?", "%#{search}%")
  end
end
