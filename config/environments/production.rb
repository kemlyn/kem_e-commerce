Rails.application.configure do
  config.action_controller.perform_caching = true

  config.action_dispatch.rack_cache = true

  config.action_mailer.perform_caching = false

  config.active_support.deprecation = :notify

  config.assets.compile = false

  config.assets.js_compressor = :uglifier

  config.cache_classes = true

  config.consider_all_requests_local = false

  config.eager_load = true

  config.read_encrypted_secrets = true

  config.public_file_server.enabled = ENV['RAILS_SERVE_STATIC_FILES'].present?

  config.log_level = :debug

  config.log_tags = [:request_id]

  config.i18n.fallbacks = true

  config.log_formatter = ::Logger::Formatter.new

  if ENV['RAILS_LOG_TO_STDOUT'].present?
    logger           = ActiveSupport::Logger.new(STDOUT)
    logger.formatter = config.log_formatter
    config.logger    = ActiveSupport::TaggedLogging.new(logger)
  end

  config.active_record.dump_schema_after_migration = false
end
