class Ability
	include CanCan::Ability

	def initialize(user)

		user ||= User.new
		if user.role? 'admin'
			can :manage, :all
			
		elsif user.role? 'teacher'
			can :manage, Classroom
			can :manage, Course
			can :manage, Lesson
			can :read, :all

		elsif user.role? 'student'
			can :read, :all
			can :create, Enrolment
			
			
		else
			can :search, Course
		end


		
	end
end