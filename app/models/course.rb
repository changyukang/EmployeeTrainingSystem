class Course < ApplicationRecord
	has_many :articles
	has_many :course_progresses
	has_many :users, through: :course_progresses
	has_many :groups, through: :course_progresses

	validates :name, presence: true, length: { maximum: 50 }, uniqueness: true
end
