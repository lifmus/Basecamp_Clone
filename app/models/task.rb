class Task < ActiveRecord::Base
  attr_accessible :title, :todo_id
  belongs_to :todo
end
