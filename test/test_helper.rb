ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'
require 'rails/test_help'

Minitest::Reporters.use! [Minitest::Reporters::SpecReporter.new, Minitest::Reporters::JUnitReporter.new('tmp/test-results/junit')]

class ActiveSupport::TestCase
  include FactoryBot::Syntax::Methods

  parallelize(workers: :number_of_processors)
end
