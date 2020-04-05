class Form::TextInputComponent < ViewComponent::Base
  def initialize(form:, method:, errors: [])
    @form = form
    @method = method
    @errors = errors
  end
end
