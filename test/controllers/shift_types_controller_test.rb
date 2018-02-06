require 'test_helper'

class ShiftTypesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get shift_types_index_url
    assert_response :success
  end

  test "should get new" do
    get shift_types_new_url
    assert_response :success
  end

  test "should get show" do
    get shift_types_show_url
    assert_response :success
  end

  test "should get create" do
    get shift_types_create_url
    assert_response :success
  end

  test "should get destroy" do
    get shift_types_destroy_url
    assert_response :success
  end

end
