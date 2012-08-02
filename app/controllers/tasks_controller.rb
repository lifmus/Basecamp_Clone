class TasksController < ApplicationController
  def create
    @task = Task.new(params[:task])
    @task.list_id = params[:list_id]
    @list = @task.list
    @project = @list.project
    @task.save
    redirect_to project_list_path(@project, @list)

  end
end
