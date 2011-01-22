class IssueTemplate < ActiveRecord::Base
  unloadable
  belongs_to :project
  validates_presence_of :project_id, :title, :description
  validates_uniqueness_of :title, :scope => :project_id
end
