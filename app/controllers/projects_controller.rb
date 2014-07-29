class ProjectsController < ApplicationController
	def index
		@project = Project.last_created_projects(10)
	end
end
