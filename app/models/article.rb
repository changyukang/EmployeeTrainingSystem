class Article < ApplicationRecord
	require 'elasticsearch/model'
	belongs_to :course

	validates :title, presence: true, length: { maximum: 50 }, uniqueness: true

	validates :category, presence: true, length: { maximum: 50 }


	class Article < ActiveRecord::Base
		include Elasticsearch::Model
		include Elasticsearch::Model::Callbacks
	end
	# Article.__elasticsearch__.create_index!
	# Article.import force:true
	# Article.import # for auto sync model with elastic search
	# @articles = Article.search('Overview').records
end
