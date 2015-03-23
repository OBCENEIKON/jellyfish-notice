every 5.minutes do
  runner 'ActiveSupport::Notifications.subscribe("sessions#create/pre_hook")'
end
