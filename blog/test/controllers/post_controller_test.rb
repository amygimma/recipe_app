require 'test_helper'

class PostControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get new_post" do
    get :new_post
    assert_response :success
  end

  test "should get create" do
    get :create
    assert_response :success
  end

end
