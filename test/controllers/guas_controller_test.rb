require 'test_helper'

class GuasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gua = guas(:one)
  end

  test "should get index" do
    get guas_url
    assert_response :success
  end

  test "should get new" do
    get new_gua_url
    assert_response :success
  end

  test "should create gua" do
    assert_difference('Gua.count') do
      post guas_url, params: { gua: { email: @gua.email, name: @gua.name, number: @gua.number } }
    end

    assert_redirected_to gua_url(Gua.last)
  end

  test "should show gua" do
    get gua_url(@gua)
    assert_response :success
  end

  test "should get edit" do
    get edit_gua_url(@gua)
    assert_response :success
  end

  test "should update gua" do
    patch gua_url(@gua), params: { gua: { email: @gua.email, name: @gua.name, number: @gua.number } }
    assert_redirected_to gua_url(@gua)
  end

  test "should destroy gua" do
    assert_difference('Gua.count', -1) do
      delete gua_url(@gua)
    end

    assert_redirected_to guas_url
  end
end
