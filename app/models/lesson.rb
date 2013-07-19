class Lesson < ActiveRecord::Base
  attr_accessible :classroom, :date, :description, :end_time, :name, :start_time

belongs_to :course
has_many :users, through: :courses

validates :start_time, presence: true
validates :end_time, presence: true
validates :name, presence: true, uniqueness: true
validates :date, presence: true
validates :description, presence: true,length:{in:(6..140)}
validates :classroom, presence: true
validates :course, presence: true


end
