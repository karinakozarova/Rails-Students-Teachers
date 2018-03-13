require 'test_helper'

class KarinasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @karina = karinas(:one)
  end

  test "should get index" do
    get karinas_url
    assert_response :success
  end

  test "should get new" do
    get new_karina_url
    assert_response :success
  end

  test "should create karina" do
    assert_difference('Karina.count') do
      post karinas_url, params: { karina: {  } }
    end

    assert_redirected_to karina_url(Karina.last)
  end

  test "should show karina" do
    get karina_url(@karina)
    assert_response :success
  end

  test "should get edit" do
    get edit_karina_url(@karina)
    assert_response :success
  end

  test "should update karina" do
    patch karina_url(@karina), params: { karina: {  } }
    assert_redirected_to karina_url(@karina)
  end

  test "should destroy karina" do
    assert_difference('Karina.count', -1) do
      delete karina_url(@karina)
    end

    assert_redirected_to karinas_url
  end
end
