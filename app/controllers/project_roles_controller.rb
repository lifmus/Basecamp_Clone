class ProjectRolesController < ApplicationController
  def index
    @project_roles = ProjectRole.find_all_by_project_id(params[:project_id])
    @project = Project.find(params[:project_id])
    @project_role = @project.project_roles.new
  end

  def create
    @project = Project.find(params[:project_id])
    @project_role = @project.project_roles.new(params[:project_role])
    @project_role.save
    redirect_to :back
  end
end
