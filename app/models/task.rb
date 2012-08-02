class Task < ActiveRecord::Base
  attr_accessible :title, :todo_ids
  belongs_to :todo
end
