require "test_helper"

class BienvenidoControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get bienvenido_index_url
    assert_response :success
  end
end
