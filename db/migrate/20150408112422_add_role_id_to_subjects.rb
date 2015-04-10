class AddRoleIdToSubjects < ActiveRecord::Migration
  def change
    add_column :subjects, :owner_id, :integer
  end
end
