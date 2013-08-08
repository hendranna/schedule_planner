
class User < ActiveRecord::Base
  has_secure_password

  attr_accessible :role, :email, :first_name, :password_digest, :second_name, :username,:password,:password_confirmation
  
  has_many :enrolments
  has_many :courses, through: :enrolments
  
  validates :first_name, presence: true
  validates :second_name, presence: true
  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  # validates :password, presence: true, length:{in:(6..20)}
  validates :role, presence: true

  	def role?(role) 
  		self.role == role
	end
end
