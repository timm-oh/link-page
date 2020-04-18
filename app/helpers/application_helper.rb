module ApplicationHelper
  def self.url_with_params(url, params = {})
    [url.chomp('/'), params.presence&.to_query].compact.join("?")
  end

  def self.display_page_url(host, username)
    "#{host}/#{username}"
  end

  def page_title
    [content_for(:title), 'Tim Link Me'].reject(&:blank?).join(' | ')
  end
end
