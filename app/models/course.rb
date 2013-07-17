class Course < ActiveRecord::Base
  attr_accessible :availability, :cost, :date_end, :date_start, :language, :name

  has_many :enrolments
  has_many :users, through: :enrolments
  has_many :lessons

  validates :name, presence: true, uniqueness: true
  validates :cost, numericality: true
  validates :date_start, presence: true
  validates :date_end, presence: true
  validates :availability, presence: true
  validates :language, presence: true

  

end

