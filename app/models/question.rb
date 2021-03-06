class Question < ApplicationRecord
	belongs_to :quiz
	has_many :answers, :dependent => :destroy
	accepts_nested_attributes_for :answers, reject_if: :all_blank, :reject_if => lambda { |a| a[:content].blank? }, :allow_destroy => true
end
