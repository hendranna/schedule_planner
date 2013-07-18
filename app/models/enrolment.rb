class Enrolment < ActiveRecord::Base
  belongs_to :user
  belongs_to :course

  validates :user, presence: true
  validates :course, presence: true

  validate :verify_uniqueness_of_users
  
  def verify_uniqueness_of_users
  	users = self.course.users.map do |user|
  		user.id
  	end
  	current_user_id = self.user_id
  	if users.include? current_user_id
  		errors.add(:user, "This user already subscribed to that course")
  	end
  end
  # attr_accessible :title, :body
end
