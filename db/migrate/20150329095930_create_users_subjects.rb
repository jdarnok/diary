class CreateUsersSubjects < ActiveRecord::Migration
  def change
    create_table :users_subjects do |t|
      t.integer :user_id
      t.integer :subject_id

      t.timestamps null: false
    end
  end
end
