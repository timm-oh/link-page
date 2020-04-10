class Form::TextInputComponent < ViewComponent::Base
  def initialize(form:, method:, placeholder: nil, errors: [])
    @form = form
    @method = method
    @errors = errors
    @placeholder = placeholder
  end
end
