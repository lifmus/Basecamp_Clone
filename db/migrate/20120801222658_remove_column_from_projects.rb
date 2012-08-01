class RemoveColumnFromProjects < ActiveRecord::Migration
  def up
    remove_column :projects, :public
  end

  def down
  end
end
