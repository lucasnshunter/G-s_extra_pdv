require 'test_helper'

class CampanhaControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get recycle" do
    get :recycle
    assert_response :success
  end

end
