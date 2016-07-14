require 'test_helper'

class UsuarioControllerTest < ActionController::TestCase
  test "should get login" do
    get :login
    assert_response :success
  end

  test "should get gravar" do
    get :gravar
    assert_response :success
  end

end
