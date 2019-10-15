module CoursesHelper

    def get_wikis (course)
            @article_wikis = Article.find_by_sql ["select * from articles where course_id = ? and category = ?", @course.course_id, "Wiki"]
    end

    def get_quizzes (wiki_id)
            @article_quizzes = Quiz.find_by_sql ["select * from quizzes where article_id = ?", "#{wiki_id}"]
    end

    def set_wiki_global_id(wiki_id)
        $article_wiki_id = "#{wiki_id}"
        # @article_wiki_by_id = Article.find_by_sql ["select * from articles where id = ?", "#{wiki_id}"]
    end

    def get_wiki_by_id(wiki_id)
        @article_wiki_id = "#{wiki_id}"
        @article_wikis = Article.find_by_sql ["select * from articles where id = ?", @article_wiki_id]
    end
    
    def set_quiz_global_id(quiz_id)
        $article_quiz_id = "#{quiz_id}"
    end

    def get_quiz_by_id(quiz_id)
        @article_quiz_id = "#{quiz_id}"
        @article_quizs = Article.find_by_sql ["select * from articles where id = ?", @article_quiz_id]
    end

    def get_progress(userID, courseID)
        return UserCourse.where(:user_id => userID, :course_id => courseID).pluck(:progress).first
    end
end
