scheduler.every '5m' do
  ActiveSupport::Notifications.subscribe('sessions#create/pre_hook')
end
