class Form::SelectInputComponent < ViewComponent::Base
  def initialize(form:, method:, options:)
    @form = form
    @method = method
    @options = options
  end
end
