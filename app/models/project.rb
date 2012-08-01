class Project < ActiveRecord::Base
  attr_accessible :public, :title, :user_id
  has_many :users
  belongs_to :user
end
