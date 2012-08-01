class RemoveColumnFromProjectRoles < ActiveRecord::Migration
  def up
    remove_column :project_roles, :title
  end

  def down
  end
end
