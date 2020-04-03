class CardComponent < ViewComponent::Base
  with_content_areas :title, :body

  STYLE_MODIFIERS = %w(default primary secondary).freeze
  SIZE_MODIFIERS = %w(small large).freeze

  def initialize(title: nil, style_modifier: 'default', hover: false, size_modifier: nil)
    @title = title
    @hover = hover
    @style_modifier = STYLE_MODIFIERS.include?(style_modifier) ? style_modifier : 'default'
    @size_modifier = SIZE_MODIFIERS.include?(size_modifier) ? size_modifier : nil
  end
end
