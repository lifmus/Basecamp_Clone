class AddIndexToProjectRoles < ActiveRecord::Migration
  def change
    add_index :project_roles, :user_id
    add_index :project_roles, :project_id
  end
end
