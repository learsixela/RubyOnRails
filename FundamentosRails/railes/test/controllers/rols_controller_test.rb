require "test_helper"

class RolsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rol = rols(:one)
  end

  test "should get index" do
    get rols_url
    assert_response :success
  end

  test "should get new" do
    get new_rol_url
    assert_response :success
  end

  test "should create rol" do
    assert_difference('Rol.count') do
      post rols_url, params: { rol: { nombre: @rol.nombre } }
    end

    assert_redirected_to rol_url(Rol.last)
  end

  test "should show rol" do
    get rol_url(@rol)
    assert_response :success
  end

  test "should get edit" do
    get edit_rol_url(@rol)
    assert_response :success
  end

  test "should update rol" do
    patch rol_url(@rol), params: { rol: { nombre: @rol.nombre } }
    assert_redirected_to rol_url(@rol)
  end

  test "should destroy rol" do
    assert_difference('Rol.count', -1) do
      delete rol_url(@rol)
    end

    assert_redirected_to rols_url
  end
end
