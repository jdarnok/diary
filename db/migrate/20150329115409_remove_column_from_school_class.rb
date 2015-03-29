class RemoveColumnFromSchoolClass < ActiveRecord::Migration
  def change
    remove_column :school_classes, :user_id
  end
end
