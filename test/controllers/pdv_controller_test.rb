require 'test_helper'

class PdvControllerTest < ActionController::TestCase
  test "should get sell_water" do
    get :sell_water
    assert_response :success
  end

  test "should get sell_gas" do
    get :sell_gas
    assert_response :success
  end

  test "should get sell_credit_cell" do
    get :sell_credit_cell
    assert_response :success
  end

  test "should get show" do
    get :show
    assert_response :success
  end

  test "should get dashboard" do
    get :dashboard
    assert_response :success
  end

end
