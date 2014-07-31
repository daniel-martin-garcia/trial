class Entry < ActiveRecord::Base
	belongs_to :project
	validates :hours, :minutes, numericality: true
end
