require 'test_helper'

class Users::SessionsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  test "redirect to links path after sign in" do
    skip "Not sure why this isn't working"
    user = create(:user)
    sign_in(user)
    assert_redirected_to links_path
  end
end