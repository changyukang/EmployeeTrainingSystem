class Group < ApplicationRecord
	has_many :user_groups
  	has_many :users, through: :user_groups
	validates :name, presence: true, length: { maximum: 50 }, uniqueness: true
end
