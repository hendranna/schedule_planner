class AddInvolvementToEnrolments < ActiveRecord::Migration
  def change
    add_column :enrolments, :involvement, :string
  end
end
