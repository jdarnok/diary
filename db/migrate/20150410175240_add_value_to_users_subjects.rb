class AddValueToUsersSubjects < ActiveRecord::Migration
  def change
    add_column :users_subjects, :value, :integer
  end
end
