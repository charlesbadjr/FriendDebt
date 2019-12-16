require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
<<<<<<< HEAD
  test "should get index" do
    get static_pages_index_url
    assert_response :success
  end

  test "should get new" do
    get static_pages_new_url
=======
  test "should get about" do
    get static_pages_about_url
    assert_response :success
  end

  test "should get home" do
    get static_pages_home_url
    assert_response :success
  end

  test "should get blog" do
    get static_pages_blog_url
>>>>>>> database_update
    assert_response :success
  end

end
