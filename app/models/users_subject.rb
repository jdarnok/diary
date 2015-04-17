class UsersSubject < ActiveRecord::Base
  resourcify
  belongs_to :user
  belongs_to :subject

end
