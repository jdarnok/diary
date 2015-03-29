class Grade < ActiveRecord::Base
  has_many :users_grades
  has_many :users, through: :users_grades
end
