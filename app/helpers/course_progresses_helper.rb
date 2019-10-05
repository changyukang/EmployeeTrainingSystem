module CourseProgressesHelper
    def get_course_progress()
        @td_array_progress = Array.new(@courses.count + 1) { Array.new(2) }
        @td_array_progress[0][0] = "courses"
        @td_array_progress[0][1] = 100.0
        @count = 1
        @courses.each do |course|
            @course_progress = CourseProgress.find_by_sql ["select id,progress from course_progresses where user_id = ? and course_id = ? ", session[:user_id], course.course_id]
            # @array_progress.push(@course_progress.first.course_id).push(@course_progress.first.progress)
                @count2 = 0
                @course_progress.each do |progress|
                    @td_array_progress[@count + @count2][0] = course.course_id
                    @td_array_progress[@count + @count2][1] = progress.progress
                    @count2 = @count2 + 1
                end
            @count = @count + @count2
        end
        
        
    end

end
