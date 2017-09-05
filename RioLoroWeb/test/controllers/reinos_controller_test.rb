require 'test_helper'

class ReinosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reino = reinos(:one)
  end

  test "should get index" do
    get reinos_url
    assert_response :success
  end

  test "should get new" do
    get new_reino_url
    assert_response :success
  end

  test "should create reino" do
    assert_difference('Reino.count') do
      post reinos_url, params: { reino: { nombreReino: @reino.nombreReino } }
    end

    assert_redirected_to reino_url(Reino.last)
  end

  test "should show reino" do
    get reino_url(@reino)
    assert_response :success
  end

  test "should get edit" do
    get edit_reino_url(@reino)
    assert_response :success
  end

  test "should update reino" do
    patch reino_url(@reino), params: { reino: { nombreReino: @reino.nombreReino } }
    assert_redirected_to reino_url(@reino)
  end

  test "should destroy reino" do
    assert_difference('Reino.count', -1) do
      delete reino_url(@reino)
    end

    assert_redirected_to reinos_url
  end
end
