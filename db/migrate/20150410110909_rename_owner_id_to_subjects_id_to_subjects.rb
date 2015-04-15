class RenameOwnerIdToSubjectsIdToSubjects < ActiveRecord::Migration
  def change
    rename_column :subjects, :owner_id, :user_id
  end
end
