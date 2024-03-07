require "test_helper"

class TrucsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @truc = trucs(:one)
  end

  test "should get index" do
    get trucs_url
    assert_response :success
  end

  test "should get new" do
    get new_truc_url
    assert_response :success
  end

  test "should create truc" do
    assert_difference("Truc.count") do
      post trucs_url, params: { truc: { name: @truc.name } }
    end

    assert_redirected_to truc_url(Truc.last)
  end

  test "should show truc" do
    get truc_url(@truc)
    assert_response :success
  end

  test "should get edit" do
    get edit_truc_url(@truc)
    assert_response :success
  end

  test "should update truc" do
    patch truc_url(@truc), params: { truc: { name: @truc.name } }
    assert_redirected_to truc_url(@truc)
  end

  test "should destroy truc" do
    assert_difference("Truc.count", -1) do
      delete truc_url(@truc)
    end

    assert_redirected_to trucs_url
  end
end
