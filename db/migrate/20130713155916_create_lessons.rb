class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.string :name
      t.string :date
      t.string :start_time
      t.string :end_time
      t.string :classroom
      t.string :teacher
      t.string :description

      t.timestamps
    end
  end
end
