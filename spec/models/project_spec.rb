require 'spec_helper'

describe Project do
  it { should belong_to(:user)}
  it { should validate_presence_of(:title)}
  it { should have_many(:users)}
  it { should have_many(:project_roles)}
  it { should have_many(:todos)}
end
