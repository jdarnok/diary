class CreateSchoolClasses < ActiveRecord::Migration
  def change
    create_table :school_classes do |t|
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
