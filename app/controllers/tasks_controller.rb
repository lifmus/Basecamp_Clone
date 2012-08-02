class TasksController < ApplicationController
  def create
    @task = Task.new(params[:task][:task])
    @task.todo_id = params[:todo_id]
    @todo = @task.todo
    @project = @todo.project
    @task.save
    redirect_to project_todo_path(@project, @todo)

  end
end
