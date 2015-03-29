class Grade < ActiveRecord::Base
  has_many :user_grades
  has_many :users, through: :user_grades
end
