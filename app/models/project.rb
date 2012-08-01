class Project < ActiveRecord::Base
  attr_accessible :public, :title, :user_id
  has_many :users
  has_many :todos
  belongs_to :user
  validates_presence_of :title, :public
end
