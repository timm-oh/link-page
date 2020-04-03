class CardComponentPreview < ViewComponent::Preview
  def base
    render(CardComponent.new)
  end

  def with_title
    render(CardComponent.new(title: "This is a title")) do |component|
      component.with(:body) do
        tag.p "Lorem ipsum dolor sit amet, consectetur adipisicing elit."
      end
    end
  end

  def with_block_content
    render CardComponent.new do |component|
      component.with(:body) do
        tag.p "THIS IS A CUSTOM BODY"
      end
    end
  end

  def secondary
    render CardComponent.new(style_modifier: 'secondary') do |component|
      component.with(:body) do
        tag.p "Lorem ipsum dolor sit amet, consectetur adipisicing elit."
      end
    end
  end

  def primary
    render CardComponent.new(style_modifier: 'primary') do |component|
      component.with(:body) do
        tag.p "Lorem ipsum dolor sit amet, consectetur adipisicing elit."
      end
    end
  end

  def hover
    render CardComponent.new(hover: true) do |component|
      component.with(:body) do
        tag.p "Lorem ipsum dolor sit amet, consectetur adipisicing elit."
      end
    end
  end

  def small
    render CardComponent.new(size_modifier: 'small') do |component|
      component.with(:body) do
        tag.p "Lorem ipsum dolor sit amet, consectetur adipisicing elit."
      end
    end
  end

  def large
    render CardComponent.new(size_modifier: 'large') do |component|
      component.with(:body) do
        tag.p "Lorem ipsum dolor sit amet, consectetur adipisicing elit."
      end
    end
  end
end
