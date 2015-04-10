class AddOwnerIdToGrades < ActiveRecord::Migration
  def change
    add_column :grades, :owner_id, :integer
  end
end
