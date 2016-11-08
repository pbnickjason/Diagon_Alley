class Project < ActiveRecord::Base
    has_and_belongs_to_many :standards
    has_and_belongs_to_many :perf_exps
    belongs_to :user

    def self.search(search)
      where("title iLIKE ? OR summary iLIKE ?", "%#{search}%", "%#{search}%") 
      #where("summary LIKE ?", "%#{search}%")
    end

    def self.include_perf_exps(perf_exp_ids)
	members = []
        Project.all.each do |project|
           members << project if project.perf_exp_ids.include? perf_exp_ids.to_i
        end
        return members
    end

end
