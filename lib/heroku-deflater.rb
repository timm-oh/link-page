require "active_support/dependencies/autoload"

module HerokuDeflater
  extend ActiveSupport::Autoload

  autoload :Railtie
  autoload :SkipBinary
  autoload :ServeZippedAssets
  autoload :CacheControlManager
end
