class Users::SetupsController < ApplicationController
  before_action :redirect_if_setup

  def edit
  end

  def update
    current_user.assign_attributes(permitted_params)
    if current_user.save(context: :setup)
      redirect_to after_sign_in_path_for(current_user)
    else
      render :edit
    end
  end

  private

  def redirect_if_setup
    return unless current_user.is_setup?
    redirect_to after_sign_in_path_for(current_user)
  end

  def permitted_params
    params.require(:user).permit(:username)
  end
end