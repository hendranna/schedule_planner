class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.string :date_start
      t.string :date_end
      t.string :language
      t.float :cost
      t.string :teacher
      t.boolean :availability

      t.timestamps
    end
  end
end
