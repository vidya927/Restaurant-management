require 'test_helper'

class RestaurantControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get chef" do
    get :chef
    assert_response :success
  end

  test "should get manager" do
    get :manager
    assert_response :success
  end

  test "should get customer" do
    get :customer
    assert_response :success
  end

  test "should get menu" do
    get :menu
    assert_response :success
  end

end
