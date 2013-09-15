require 'test_helper'

class PageControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get about_us" do
    get :about_us
    assert_response :success
  end

  test "should get recipes" do
    get :recipes
    assert_response :success
  end

  test "should get product" do
    get :product
    assert_response :success
  end

  test "should get articles" do
    get :articles
    assert_response :success
  end

  test "should get calender" do
    get :calender
    assert_response :success
  end

  test "should get blog" do
    get :blog
    assert_response :success
  end

  test "should get login" do
    get :login
    assert_response :success
  end

end
