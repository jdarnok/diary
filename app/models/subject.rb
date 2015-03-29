class Subject < ActiveRecord::Base
  validates :name, presence: true, length: { minimum: 4 }
  validates :description, presence:true, length: {minimum: 10}

  has_many :users_subjects
  has_many :users, through: :users_subjects
end
