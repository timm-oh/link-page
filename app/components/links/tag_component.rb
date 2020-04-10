class Links::TagComponent < ViewComponent::Base
  def initialize(form:, key:, value:)
    @form = form
    @key = key
    @value = value
  end
end
