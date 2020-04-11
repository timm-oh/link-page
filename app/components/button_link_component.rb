class ButtonLinkComponent < ViewComponent::Base
  def initialize(text:, link:, classes: [], **options)
    @text = text
    @link = link
    @classes = classes
    @options = options
  end

  def call
    link_to @text, @link, class: ['uk-button', 'uk-button-default', *@classes].join(' '), **@options
  end
end
