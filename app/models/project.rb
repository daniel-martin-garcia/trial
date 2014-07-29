class Project < ActiveRecord::Base
	has_many :entries
	def self.iron_find(id)
		project = where(id: id).first
		unless project.present?
			raise
			ActiveRecord::RecordNotFound.new("Couldn't find project with id=#{(id)}")
		end
		project
	end 

	def self.last_created_projects(n)
		order(created_at: :desc).limit(n)
	end
end
