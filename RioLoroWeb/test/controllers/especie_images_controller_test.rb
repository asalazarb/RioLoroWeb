require 'test_helper'

class EspecieImagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @especie_image = especie_images(:one)
  end

  test "should get index" do
    get especie_images_url
    assert_response :success
  end

  test "should get new" do
    get new_especie_image_url
    assert_response :success
  end

  test "should create especie_image" do
    assert_difference('EspecieImage.count') do
      post especie_images_url, params: { especie_image: {  } }
    end

    assert_redirected_to especie_image_url(EspecieImage.last)
  end

  test "should show especie_image" do
    get especie_image_url(@especie_image)
    assert_response :success
  end

  test "should get edit" do
    get edit_especie_image_url(@especie_image)
    assert_response :success
  end

  test "should update especie_image" do
    patch especie_image_url(@especie_image), params: { especie_image: {  } }
    assert_redirected_to especie_image_url(@especie_image)
  end

  test "should destroy especie_image" do
    assert_difference('EspecieImage.count', -1) do
      delete especie_image_url(@especie_image)
    end

    assert_redirected_to especie_images_url
  end
end
