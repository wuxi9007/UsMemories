require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get blog" do
    get static_pages_blog_url
    assert_response :success
  end

end
