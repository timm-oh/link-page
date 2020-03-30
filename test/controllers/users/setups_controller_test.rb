require 'test_helper'

class Users::SetupsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  setup do
    @user = create(:user)
    sign_in(@user)
  end

  test 'should render edit if not setup' do
    get edit_setup_path
    assert_response :success
  end

  test 'should update and redirect if username present' do
    patch(setup_path, params: {
      user: {
        username: 'something'
      }
    })

    assert_equal 'something', @user.reload.username
    assert_predicate @user, :is_setup?
    assert_redirected_to links_path
  end

  test "should render edit if username blank" do
    patch(setup_path, params: {
      user: {
        username: ''
      }
    })

    assert_response :success
  end

  test 'should redirect if setup' do
    @user.update!(username: 'things')
    get edit_setup_path

    assert_redirected_to links_path
  end
end
