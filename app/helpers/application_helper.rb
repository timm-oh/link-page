module ApplicationHelper
  def user_link_tree_url(user)
    if Rails.env.development?
      "#{request.host}:#{request.port}/#{user.username}"
    else
      "#{request.host}/#{user.username}"
    end
  end
end
