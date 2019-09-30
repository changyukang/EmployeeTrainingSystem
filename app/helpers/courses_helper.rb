module CoursesHelper
    def get_wiki_and_quiz (courses)
            @article_wikis = Article.find_by_sql ["select * from articles where course_id = ? and category = ?", @course.course_id, "Wiki"]
            @article_quizzes = Article.find_by_course_id_and_category(@course.course_id, "Quiz")
    end

    def set_wiki_global_id(wiki_id)
        $article_wiki_id = "#{wiki_id}"
        # $article_wiki_single = "^^^"
        # @article_wiki_by_id = Article.find_by_sql ["select * from articles where id = ?", "#{wiki_id}"]
    end

    def get_wiki_by_id(wiki_id)
        @article_wiki_id = "#{wiki_id}"
        @article_wiki_by_id = Article.find_by_sql ["select * from articles where id = ?", @article_wiki_id]
    end
    
end
