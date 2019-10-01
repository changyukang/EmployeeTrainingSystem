class SearchController < ApplicationController
    def search
        if params[:q].nil?
            @articles = []
        else
            # elasticsearch
            # @articles = Article.find_by_body(params[:q])

            # personal method
            @search_key = '%'.concat(params[:q]).concat('%')
            @articles = Article.find_by_sql ["select * from articles where title like ?", @search_key]
        end
    end

    # def self.search(search)
    #     response = __elasticsearch__.search(search)
    # end

    # def self.search(search)
    #     @articles = __elasticsearch__.search(search)
    # end
end
