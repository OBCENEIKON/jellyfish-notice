Rails.application.configure do
  config.action_mailer.perform_deliveries = ENV['PJ_PERFORM_DELIVERIES']
  config.action_mailer.delivery_method = :smtp unless ENV['PJ_DELIVERY_METHOD'] != 'smtp'
  config.action_mailer.smtp_settings = {
      :address              => ENV['PJ_SMTP_ADDRESS'],
      :port                 => ENV['PJ_SMTP_PORT'],
      :user_name            => ENV['PJ_SMTP_USER_NAME'],
      :password             => ENV['PJ_SMTP_PASSWORD'],
      :authentication       => ENV['PJ_SMTP_AUTHENTICATION'],
      :enable_starttls_auto => ENV['PJ_SMTP_ENABLE_STARTTLS_AUTO']
  }
end
