class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  protected

  def check_user_setup
    return if current_user.is_setup?
    redirect_to(after_sign_up_path_for(current_user))
  end

  def after_sign_up_path_for(user)
    return root_path unless user
    if user.is_setup?
      links_path
    else
      edit_setup_path
    end
  end

  def after_sign_in_path_for(user)
    return root_path unless user
    if user.is_setup?
      links_path
    else
      edit_setup_path
    end
  end
end
