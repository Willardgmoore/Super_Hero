require 'test_helper'

class SuperPeopleControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get show" do
    get :show
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get villians" do
    get :villians
    assert_response :success
  end

  test "should get heroes" do
    get :heroes
    assert_response :success
  end

end
