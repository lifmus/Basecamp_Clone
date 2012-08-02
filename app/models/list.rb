class List < ActiveRecord::Base
  attr_accessible :project_id, :title, :tasks_attributes
  belongs_to :project
  has_many :tasks
  accepts_nested_attributes_for :tasks
end
