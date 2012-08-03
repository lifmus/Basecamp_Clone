class ProjectsController < ApplicationController
  before_filter :authenticate_user!

  def index
    @all_involved_projects = ProjectRole.find_all_by_user_id(current_user.id).map { |project_role| project_role.project }
    @projects = Project.find_all_by_privacy("public")
    @projects = @projects | @all_involved_projects
  end

  def new
    @project = current_user.projects.new
  end

  def create
    @project = Project.new(params[:project])
    @project.user_id = current_user.id
    if @project.save
      flash[:message] = "You have made a new project"
      redirect_to project_path(@project)
    else
      flash[:error] = "You cannot have blank fields!"
      redirect_to new_project_path
    end
  end

  def show
    @project = Project.find(params[:id])
  end

end
