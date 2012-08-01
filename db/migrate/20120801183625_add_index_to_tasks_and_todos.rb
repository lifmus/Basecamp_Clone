class AddIndexToTasksAndTodos < ActiveRecord::Migration
  def change
    add_index :todos, :project_id
    add_index :tasks, :todo_id
  end
end
