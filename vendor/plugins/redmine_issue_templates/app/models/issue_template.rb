class IssueTemplate < ActiveRecord::Base
  unloadable
  belongs_to :project
end
