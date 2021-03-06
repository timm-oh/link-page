class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session
  before_action :authenticate_user!
  helper_method :render_navbar?, :render_footer?

  protected

  def render_footer?
    true
  end

  def render_navbar?
    true
  end

  def after_sign_up_path_for(user)
    return root_path unless user
    links_path
  end

  def after_sign_in_path_for(user)
    return root_path unless user
    links_path
  end
end
