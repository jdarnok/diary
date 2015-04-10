class RemoveGradeIdFromGrades < ActiveRecord::Migration
  def change
    remove_column :users_grades, :grade_id
  end
end
