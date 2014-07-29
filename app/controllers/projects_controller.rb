class ProjectsController < ApplicationController
	def index
		@project = Project.last_created_projects(10)
	end
	def show
		@project = Project.find(params[:id])
	rescue
		@project = Project.last_created_projects(10)
		render "error", layout: "error"


	end
end
