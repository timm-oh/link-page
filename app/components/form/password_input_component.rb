class Form::PasswordInputComponent < ViewComponent::Base
  def initialize(form:, method:, errors: [], **options)
    @form = form
    @method = method
    @errors = errors
    @options = options
  end
end
