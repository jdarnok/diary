class AddTeacherIdToSchoolClasses < ActiveRecord::Migration
  def change
    add_column :school_classes, :teacher_id, :integer
  end
end
