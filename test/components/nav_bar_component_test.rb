require "test_helper"

class NavBarComponentTest < ViewComponent::TestCase
  setup do
    @user = users(:tim)
  end

  test "component renders navbar" do
    skip "no fucking idea how to test this nicely actually"

    expected_result = <<~HTML.strip
      <nav class="uk-navbar-container" uk-navbar="">
        <div class="uk-navbar-left">
          <ul class="uk-navbar-nav">
            <li class="uk-active">
              <a href="/">Home</a>
            </li>
            <li><a href="/links">Links</a></li>
          </ul>
        </div>
        <div class="uk-navbar-right">
          <ul class="uk-navbar-nav">
            <li><a rel="nofollow" data-method="delete" href="/users/sign_out">Log Out</a></li>
          </ul>
        </div>
      </nav>
    HTML
    assert_equal(expected_result.to_s,
      render_inline(NavBarComponent.new(user: @user)).to_html
    )
  end
end
