class RemoveTeacherFromCoursesAndLessons < ActiveRecord::Migration
  def change
  	remove_column :courses, :teacher
  	remove_column :lessons, :teacher
  end
end
