class AddIndexToTasksAndLists < ActiveRecord::Migration
  def change
    add_index :lists, :project_id
    add_index :tasks, :list_id
  end
end
