class RenameGradeAttribute < ActiveRecord::Migration
  def change
    rename_column :grades, :vaue, :value
  end
end
