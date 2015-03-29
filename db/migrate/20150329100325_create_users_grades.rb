class CreateUsersGrades < ActiveRecord::Migration
  def change
    create_table :users_grades do |t|
      t.integer :user_id
      t.integer :subject_id
      t.integer :grade_id

      t.timestamps null: false
    end
  end
end
