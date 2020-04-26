require 'test_helper'

class PlacesControllerTest < ActionDispatch::IntegrationTest
  test "should get add" do
    get places_add_url
    assert_response :success
  end

  test "should get edit" do
    get places_edit_url
    assert_response :success
  end

  test "should get update" do
    get places_update_url
    assert_response :success
  end

  test "should get destroy" do
    get places_destroy_url
    assert_response :success
  end

  test "should get index" do
    get places_index_url
    assert_response :success
  end

end
