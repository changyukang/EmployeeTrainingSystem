require "application_system_test_case"

class CourseProgressesTest < ApplicationSystemTestCase
  setup do
    @course_progress = course_progresses(:one)
  end

  test "visiting the index" do
    visit course_progresses_url
    assert_selector "h1", text: "Course Progresses"
  end

  test "creating a Course progress" do
    visit course_progresses_url
    click_on "New Course Progress"

    fill_in "Course", with: @course_progress.course_id
    fill_in "Progress", with: @course_progress.progress
    fill_in "User", with: @course_progress.user_id
    click_on "Create Course progress"

    assert_text "Course progress was successfully created"
    click_on "Back"
  end

  test "updating a Course progress" do
    visit course_progresses_url
    click_on "Edit", match: :first

    fill_in "Course", with: @course_progress.course_id
    fill_in "Progress", with: @course_progress.progress
    fill_in "User", with: @course_progress.user_id
    click_on "Update Course progress"

    assert_text "Course progress was successfully updated"
    click_on "Back"
  end

  test "destroying a Course progress" do
    visit course_progresses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Course progress was successfully destroyed"
  end
end
