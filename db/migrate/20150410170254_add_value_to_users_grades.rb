class AddValueToUsersGrades < ActiveRecord::Migration
  def change
    add_column :users_grades, :value, :integer
  end
end
