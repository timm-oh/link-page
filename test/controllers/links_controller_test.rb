require 'test_helper'

class LinksControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  setup do
    @link = links(:valid_link)
    sign_in @link.user
  end

  test "should get index" do
    get links_url
    assert_response :success
  end

  test "should get new" do
    get new_link_url
    assert_response :success
  end

  test "should create link" do
    assert_difference('Link.count') do
      post links_url, params: { link: { name: "New Link", url: @link.url } }
    end

    assert_redirected_to link_url(Link.last)
  end

  test "should show link" do
    get link_url(@link)
    assert_response :success
  end

  test "should get edit" do
    get edit_link_url(@link)
    assert_response :success
  end

  test "should update link" do
    patch link_url(@link), params: { link: { name: "New Link", url: @link.url } }
    assert_redirected_to link_url(@link)
  end

  test "should destroy link" do
    assert_difference('Link.count', -1) do
      delete link_url(@link)
    end

    assert_redirected_to links_url
  end

  test '#reorder' do
    @links = links(:link_in_position_0, :link_in_position_1, :link_in_position_2)
    new_order = [@links.last, @links.first, @links.second]

    assert_no_difference('Link.count') do
      patch reorder_links_path, params: {
        link_ids: new_order.map(&:id)
      }
    end

    assert_redirected_to links_path
    assert_equal Link.where(id: @links).ordered_by_position.to_a, new_order
  end
end
