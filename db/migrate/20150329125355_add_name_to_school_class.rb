class AddNameToSchoolClass < ActiveRecord::Migration
  def change
    add_column :school_classes, :name, :string
  end
end
