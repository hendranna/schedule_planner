class CreateEnrolments < ActiveRecord::Migration
  def change
    create_table :enrolments do |t|
      t.references :user
      t.references :course

      t.timestamps
    end
    add_index :enrolments, :user_id
    add_index :enrolments, :course_id
  end
end
