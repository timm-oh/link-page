require 'test_helper'

class DisplaysControllerTest < ActionDispatch::IntegrationTest

  test "should get index for username that doesn't exist" do
    get "/some_random_username"
    assert_response :success
  end

  test "should get index for username that exists" do
    user = create(:user)
    get "/#{user.username}"
    assert_response :success
  end
end
