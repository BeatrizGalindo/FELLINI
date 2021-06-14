require 'test_helper'

class RecommendationsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get recommendations_index_url
    assert_response :success
  end

  test "should get create" do
    get recommendations_create_url
    assert_response :success
  end

  test "should get destroy" do
    get recommendations_destroy_url
    assert_response :success
  end

end