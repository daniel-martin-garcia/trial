class EntriesController < ApplicationController
	def index
		@entries = Entry.find params [:projects_id]
		@entries = Project.entries
	end
end
