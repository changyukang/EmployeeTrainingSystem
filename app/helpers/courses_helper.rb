module CoursesHelper
    def get_wiki_and_quiz (courses)
            @articles_wiki = Article.find_by_course_id_and_category(@course.course_id, "Wiki")
            @articles_quiz = Article.find_by_course_id_and_category(@course.course_id, "Quiz")
    end
end
