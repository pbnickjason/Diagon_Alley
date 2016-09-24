class Project < ActiveRecord::Base
  def self.search(search)
    where("title iLIKE ? OR summary iLIKE ?", "%#{search}%", "%#{search}%") 
    #where("summary LIKE ?", "%#{search}%")
  end
end
