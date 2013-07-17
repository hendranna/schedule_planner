class AddLessonToCourses < ActiveRecord::Migration
  def change
    add_column :lessons, :course, :references
  end
end
