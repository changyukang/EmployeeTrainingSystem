require 'test_helper'

class QuizzesControllerTest < ActionDispatch::IntegrationTest
  setup do
    log_in_as(users(:testuser))
    @quiz = quizzes(:one)
  end

  test "should get index" do
    get quizzes_url
    assert_response :success
  end

  test "should get new" do
    get new_quiz_url
    assert_response :success
  end

  #Obsolete
  #test "should create quiz" do
  #  assert_difference('Quiz.count') do
  #    post quizzes_url, params: { quiz: { article_id: '1', body: "@quiz.body", course_id: "1", title: "@quiz.title" } }
  #  end

  #  assert_redirected_to quiz_url(Quiz.last)
  #end

  test "should show quiz" do
    get quiz_url(@quiz)
    assert_response :success
  end

  test "should get edit" do
    get edit_quiz_url(@quiz)
    assert_response :success
  end

  test "should update quiz" do
    patch quiz_url(@quiz), params: { quiz: { article_id: @quiz.article_id, body: @quiz.body, course_id: @quiz.course_id, title: @quiz.title } }
    assert_redirected_to quiz_url(@quiz)
  end

  test "should destroy quiz" do
    assert_difference('Quiz.count', -1) do
      delete quiz_url(@quiz)
    end

    assert_redirected_to quizzes_url
  end
end
