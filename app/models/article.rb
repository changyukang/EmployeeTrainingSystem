class Article < ApplicationRecord
	require 'elasticsearch/model'
	belongs_to :course

	validates :title, presence: true, length: { maximum: 50 }, uniqueness: { case_sensitive: false }

	validates :category, presence: true, length: { maximum: 50 }


	class Article < ActiveRecord::Base
		include Elasticsearch::Model
		include Elasticsearch::Model::Callbacks
	end
end
