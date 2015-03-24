require 'rufus-scheduler'

scheduler = Rufus::Scheduler.new

scheduler.every '5m' do
  ActiveSupport::Notifications.instrument('sessions#create/pre_hook')
end
