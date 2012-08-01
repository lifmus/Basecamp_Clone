class AddColumnToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :privacy, :string
  end
end
