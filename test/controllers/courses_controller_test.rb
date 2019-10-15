require 'test_helper'

class CoursesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @testCourse = courses(:one)
    log_in_as(users(:testuser))
  end

  test "should get index" do
    get courses_url
    assert_response :success
  end

  test "should get new" do
    get new_course_url
    assert_response :success
  end

  test "should create course" do
    assert_difference('Course.count') do
      post courses_url, params: { course: { group_id: "1", introduction: "This is a courses created to test course create", name: "Create Course Test" } }
    end
    assert_redirected_to course_url(Course.last)
  end

  test "should show course" do
    get course_url(@testCourse)
    assert_response :success
  end

  test "should get edit" do
    get edit_course_url(@testCourse)
    assert_response :success
  end

  test "should update course" do
    patch course_url(@testCourse), params: { course: { name: @testCourse.name, group_id: @testCourse.group_id, introduction: @testCourse.introduction,  } }
    assert_redirected_to course_url(@testCourse)
  end

  test "should destroy course" do
    assert_difference('Course.count', -1) do
      delete course_url(@testCourse)
    end
    assert_redirected_to courses_url
  end
end
