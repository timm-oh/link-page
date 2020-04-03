require 'test_helper'

class Users::RegistrationsControllerTest < ActionDispatch::IntegrationTest
  test 'should set username when registering' do
    assert_difference 'User.count', +1 do
      post user_registration_path, params: {
        user: {
          email: 'cool_bro@example.com',
          password: 'pass1234',
          password_confirmation: 'pass1234',
          username: 'yeet_man'
        }
      }
    end
  end
end