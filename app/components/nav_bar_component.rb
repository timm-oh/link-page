class NavBarComponent < ViewComponent::Base
  def initialize(user:, render: true)
    @user = user
    @render = render
  end

  def render?
    @render
  end
end
