class Form::SelectInputComponent < ViewComponent::Base
  def initialize(form:, method:, choices:, **options)
    @form = form
    @method = method
    @choices = choices
    @options = options
  end
end
