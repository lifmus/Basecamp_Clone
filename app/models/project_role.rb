class ProjectRole < ActiveRecord::Base
  attr_accessible :project_id, :title, :user_id
  validates_presence_of :project_id, :user_id, :title
  belongs_to :user
  belongs_to :project
  validates_inclusion_of :title, :in => ["owner", "admin", "member"]
end
