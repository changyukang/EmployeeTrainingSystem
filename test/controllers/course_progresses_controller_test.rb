require 'test_helper'

class CourseProgressesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @course_progress = course_progresses(:one)
  end

  test "should get index" do
    get course_progresses_url
    assert_response :success
  end

  test "should get new" do
    get new_course_progress_url
    assert_response :success
  end

  #Obsolete
  #test "should create course_progress" do
  #  assert_difference('CourseProgress.count') do
  #    post course_progresses_url, params: { course_progress: { course_id: @course_progress.course_id, progress: @course_progress.progress, user_id: @course_progress.user_id } }
  #  end

  #  assert_redirected_to course_progress_url(CourseProgress.last)
  #end

  test "should show course_progress" do
    get course_progress_url(@course_progress)
    assert_response :success
  end

  test "should get edit" do
    get edit_course_progress_url(@course_progress)
    assert_response :success
  end

  #test "should update course_progress" do
  #  patch course_progress_url(@course_progress), params: { course_progress: { course_id: @course_progress.course_id, progress: @course_progress.progress, user_id: @course_progress.user_id } }
  #  assert_redirected_to course_progress_url(@course_progress)
  #end

  test "should destroy course_progress" do
    assert_difference('CourseProgress.count', -1) do
      delete course_progress_url(@course_progress)
    end

    assert_redirected_to course_progresses_url
  end
end
