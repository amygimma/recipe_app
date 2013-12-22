require 'test_helper'

class PeopleControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get new_name" do
    get :new_name
    assert_response :success
  end

  test "should get create" do
    get :create
    assert_response :success
  end

end
