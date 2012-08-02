class ListsController < ApplicationController

  def show
    @list = List.find(params[:id])
    @task = @list.tasks.new
  end


  def new
    @project = Project.find(params[:project_id])
    @list = @project.lists.new
  end

  def create
    @list = List.new(params[:list])
    @list.project_id = params[:project_id]
    @project = Project.find(params[:project_id])
    if @list.save
      flash[:message] = "You have made a new list list!"
      redirect_to project_list_path(@project, @list)
    else
      # flash[:error] = "You cannot have blank fields!"
      redirect_to new_project_list_path
    end
  end

end
