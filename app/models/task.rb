class Task < ActiveRecord::Base
  attr_accessible :title, :list_ids
  belongs_to :list
end
