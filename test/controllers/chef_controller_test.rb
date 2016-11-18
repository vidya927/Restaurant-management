require 'test_helper'

class ChefControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get view" do
    get :view
    assert_response :success
  end

  test "should get prepare" do
    get :prepare
    assert_response :success
  end

end
