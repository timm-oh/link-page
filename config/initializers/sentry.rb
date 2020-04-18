Raven.configure do |config|
  config.dsn = ENV['SENTRY_DSN'] || 'https://foo:bar@sentry.io/link-page'
  config.current_environment = ENV['SENTRY_ENV']
  config.release = ENV['HEROKU_SLUG_COMMIT']
  config.sanitize_fields = Rails.application.config.filter_parameters.map(&:to_s)
end
