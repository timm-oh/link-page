class Form::TextInputComponent < ViewComponent::Base
  def initialize(form:, method:, placeholder: nil, errors: [], **options)
    @form = form
    @method = method
    @errors = errors
    @placeholder = placeholder
    @options = options
  end
end
