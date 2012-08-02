class Project < ActiveRecord::Base
  attr_accessible :privacy, :title, :user_id
  has_many :users, :through => :project_roles
  has_many :project_roles
  has_many :lists
  belongs_to :user
  validates_presence_of :title, :privacy
  after_create :generate_join_table_for_owner
  validates_inclusion_of :privacy, :in => ["public", "private"]

  private

  def generate_join_table_for_owner
    self.project_roles.create(:user_id => self.user_id, :title => "owner")
  end
end
