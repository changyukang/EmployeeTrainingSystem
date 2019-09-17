require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title", "Employee Training System"

  end

  test "should get help" do
    get help_path
    assert_response :success
    assert_select "title", "Help | Employee Training System"

  end

  test "should get about" do
    get about_path
    assert_response :success
    assert_select "title", "About | Employee Training System"

  end

  test "should get contact" do
    get contact_path
    assert_response :success
    assert_select "title", "Contact | Employee Training System"
  end

end
