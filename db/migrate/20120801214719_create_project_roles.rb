class CreateProjectRoles < ActiveRecord::Migration
  def change
    create_table :project_roles do |t|
      t.string :title
      t.integer :user_id
      t.integer :project_id

      t.timestamps
    end
  end
end
