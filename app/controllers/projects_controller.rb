class ProjectsController < ApplicationController
  before_filter :authenticate_user!

  def index
    @projects = Project.all
  end

  def new
    @project = current_user.projects.new
  end

  def create
    @project = current_user.projects.new(params[:project])
    if @project.save
      redirect_to project_path(@project)
    else
      render 'new'
    end
  end

  def show
    @project = Project.find(params[:id])
  end

end
