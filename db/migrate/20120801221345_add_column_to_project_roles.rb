class AddColumnToProjectRoles < ActiveRecord::Migration
  def change
    add_column :project_roles, :title, :string, :default => "member"
  end
end
