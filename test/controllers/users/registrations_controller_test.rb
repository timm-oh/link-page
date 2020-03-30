require 'test_helper'

class Users::RegistrationsControllerTest < ActionDispatch::IntegrationTest
  test "should redirect to links path on successful sign up" do
    params = {
      user: {
        email: 'random@example.com',
        password: 'pass1234',
        password_confirmation: 'pass1234'
      }
    }

    post(user_registration_path, params: params)
    assert_redirected_to links_path
  end
end