require 'test_helper'

class AccionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @accion = accions(:one)
  end

  test "should get index" do
    get accions_url
    assert_response :success
  end

  test "should get new" do
    get new_accion_url
    assert_response :success
  end

  test "should create accion" do
    assert_difference('Accion.count') do
      post accions_url, params: { accion: { accion: @accion.accion } }
    end

    assert_redirected_to accion_url(Accion.last)
  end

  test "should show accion" do
    get accion_url(@accion)
    assert_response :success
  end

  test "should get edit" do
    get edit_accion_url(@accion)
    assert_response :success
  end

  test "should update accion" do
    patch accion_url(@accion), params: { accion: { accion: @accion.accion } }
    assert_redirected_to accion_url(@accion)
  end

  test "should destroy accion" do
    assert_difference('Accion.count', -1) do
      delete accion_url(@accion)
    end

    assert_redirected_to accions_url
  end
end
