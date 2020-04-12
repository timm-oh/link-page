class Links::TableComponent < ViewComponent::Base
  HEADERS = [nil, 'position', 'name', 'url', nil, nil, nil].freeze

  def initialize(links:)
    @links = links
  end

  def headers
    HEADERS
  end
end
