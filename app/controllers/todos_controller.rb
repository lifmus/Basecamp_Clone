class TodosController < ApplicationController

  def show

  end


  def new
    @project = Project.find(params[:project_id])
    @todo = @project.todos.new
  end

  def create
    @todo = Todo.new(params[:todo])
    @todo.project_id = params[:project_id]
    @project = Project.find(params[:project_id])
    if @todo.save
      flash[:message] = "You have made a new todo list!"
      redirect_to project_todo_path(@project, @todo)
    else
      # flash[:error] = "You cannot have blank fields!"
      redirect_to new_project_todo_path
    end
  end

end
