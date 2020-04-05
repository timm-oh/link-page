class Links::TableComponent < ViewComponent::Base
  HEADERS = ['name', 'url', 'position', nil, nil, nil].freeze

  def initialize(links:)
    @links = links
  end

  def headers
    HEADERS
  end
end
