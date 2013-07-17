class Enrolment < ActiveRecord::Base
  belongs_to :user
  belongs_to :course

  
  # attr_accessible :title, :body
end
