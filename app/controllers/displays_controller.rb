class DisplaysController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :set_user

  def index
    @links = @user.links.ordered_by_position.load
  end

  protected

  def render_navbar?
    false
  end

  private

  def set_user
    @user = User.find_or_initialize_by(params.permit(:username))
  end
end