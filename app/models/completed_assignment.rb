class CompletedAssignment < ActiveRecord::Base
  attr_accessible :user, :assignments, :url, :completed 
  belongs_to :user
  belongs_to :assignments
end
