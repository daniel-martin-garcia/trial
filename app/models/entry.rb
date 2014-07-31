class Entry < ActiveRecord::Base
	belongs_to :project
	validates :hours, :minutes, numericality: true {message "WTF????? OMG!!!"}
end
