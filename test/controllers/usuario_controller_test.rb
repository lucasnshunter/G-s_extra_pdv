require 'test_helper'

class UsuarioControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get login" do
    get :login
    assert_response :success
  end

  test "should get teste" do
    get :teste
    assert_response :success
  end

end
