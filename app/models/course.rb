class Course < ApplicationRecord
	has_many :articles
	has_many :user_courses, :dependent => :destroy
	has_many :users, through: :user_courses

	validates :name, presence: true, length: { maximum: 50 }, uniqueness: { case_sensitive: false }
end
