class TodosController < ApplicationController

  def new
    @todo = Todo.new(:project_id => params[:project_id])
  end

  def create
    @todo = Todo.new(params[:todo])
    if @todo.save
      flash[:message] = "You have made a new todo list!"
      redirect_to project_todo_path(@todo)
    else
      flash[:error] = "You cannot have blank fields!"
      redirect_to new_project_todo_path
    end
  end

end
