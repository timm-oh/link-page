class ButtonLinkComponent < ViewComponent::Base
  def initialize(text:, link:, classes: [])
    @text = text
    @link = link
    @classes = classes
  end

  def call
    link_to @text, @link, class: ['uk-button', 'uk-button-default', *@classes].join(' ')
  end
end
