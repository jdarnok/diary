class SchoolClass < ActiveRecord::Base
  
  has_many :users
end
