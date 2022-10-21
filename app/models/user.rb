class User < ApplicationRecord
	has_and_belongs_to_many :events
	has_many :games, through: :enrollments
	has_many :enrollments
	has_many :comments, as: :commentable
end
