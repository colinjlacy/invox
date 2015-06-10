require 'test_helper'

class AdminControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get user" do
    get :user
    assert_response :success
  end

  test "should get new_user" do
    get :new_user
    assert_response :success
  end

  test "should get create" do
    get :create
    assert_response :success
  end

  test "should get unauthorized" do
    get :unauthorized
    assert_response :success
  end

end
