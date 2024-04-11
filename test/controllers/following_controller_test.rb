require "test_helper"

class FollowingControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get following_create_url
    assert_response :success
  end
end
