class AddDescriptionToUsersSubjects < ActiveRecord::Migration
  def change
    add_column :users_subjects, :description, :string
  end
end
