class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  helper_method :render_navbar?

  protected

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
