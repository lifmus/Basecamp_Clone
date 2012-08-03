class Task < ActiveRecord::Base
  attr_accessible :title, :list_ids, :user_id
  belongs_to :list
  belongs_to :user
end
