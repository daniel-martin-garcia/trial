class Project < ActiveRecord::Base
	has_many :entries
	validates :name, presence: true, uniqueness: true, length: { maximum: 30 }

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

	def total_hours_in_month(month, year)
		first_day = Date.new(year, month, 1)
		last_day = first_day.end_of_month
		entries_in_month = entries.where(date: [first_day..last_day])
		entries_in_month.inject(0) do |sum, entry|
			sum + entry.minutes/60.0 + entry.hours
		end
	end
end
