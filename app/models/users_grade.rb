class UsersGrade < ActiveRecord::Base
  belongs_to :user
  belongs_to :grade
end
