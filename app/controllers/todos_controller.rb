class TodosController < ApplicationController

  def new
    project = Project.find(params[:project])
    @todo = project.todos.new
  end

  def create
    @todo = Todo.new(params[:todo])
    if @todo.save
      flash[:message] = "You have made a new todo list!"
      redirect_to todo_path(@todo)
    else
      flash[:error] = "You cannot have blank fields!"
      redirect_to new_todo_path
    end
  end

end
