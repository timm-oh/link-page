module GoogleAnalyticsHelper
  TRACKING_CODE = Rails.application.credentials.dig(:google_analytics_code).freeze
  JAVASCRIPT_URL = "https://www.googletagmanager.com/gtag/js?id=#{TRACKING_CODE}".freeze

  def self.javascript_url
    JAVASCRIPT_URL
  end

  def self.tracking_code
    TRACKING_CODE
  end
end