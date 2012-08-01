class ProjectsController < ApplicationController
  before_filter :authenticate_user!

  def index
    @projects = Project.find_all_by_user_id(current_user.id)
  end

  def new
    @project = current_user.projects.new
  end

  def create
    @project = current_user.projects.new(params[:project])
    if @project.save
      flash[:message] = "You have made a new project"
      redirect_to project_path(@project)
    else
      render 'new'
      flash[:error] = "You cannot have blank fields!"
    end
  end

  def show
    @project = Project.find(params[:id])
  end

end
