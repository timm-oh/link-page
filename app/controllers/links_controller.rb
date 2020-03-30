class LinksController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :set_user

  def index
    @links = @user.links.load
  end

  private

  def set_user
    @user = User.find_or_initialize_by(params.permit(:username))
  end
end