if ENV['SENTRY_DSN']
  Raven.configure do |config|
    config.dsn = ENV['SENTRY_DSN']
    config.current_environment = ENV.fetch('SENTRY_ENV') { 'N/A' }
    config.release = ENV.fetch('HEROKU_SLUG_COMMIT') { 'N/A' }
    config.sanitize_fields = Rails.application.config.filter_parameters.map(&:to_s)
  end
end
