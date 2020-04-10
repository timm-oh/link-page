module ApplicationHelper
  def url_with_params(url, params = {})
    [url.chomp('/'), params.presence&.to_query].compact.join("?")
  end
end
