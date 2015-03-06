JellyNotification
=======
A notification system for Project Jellyfish.
#### Installation
Add this line to your Gemfile: 
```
  gem 'jelly_notification' 
```
https://rubygems.org/gems/jelly_notification

And add these settings to your .env file:
```
  PJ_PERFORM_DELIVERIES        = true
  PJ_DELIVERY_METHOD           = smtp
  PJ_SMTP_ADDRESS              = your.smtp.server
  PJ_SMTP_PORT                 = 587
  PJ_SMTP_USER_NAME            = API-KEY
  PJ_SMTP_PASSWORD             = API-KEY
  PJ_SMTP_AUTHENTICATION       = plain
  PJ_SMTP_ENABLE_STARTTLS_AUTO = true
  PJ_SMTP_DEFAULT_RECIPIENT    = from_who@foo.com
  PJ_SMTP_DEFAULT_SENDER       = to_whom@bar.com
```

Add before_commit and after_commit hooks to controllers with private instrument methods:
```
class SessionsController < Devise::SessionsController
  before_action :pre_hook
  after_action :post_hook
  ...
  private
  ...
  def pre_hook
    ActiveSupport::Notifications.instrument(controller_name + '#' + action_name + '/pre_hook')
   end
  def post_hook
    ActiveSupport::Notifications.instrument(controller_name + '#' + action_name + '/post_hook')
  end
end
```

Then add subscribers to those events under config/initializers/subscriptions.rb:
```
ActiveSupport::Notifications.subscribe('sessions#create/pre_hook') do |*args|
  JellyNotification.send(*args)
end
ActiveSupport::Notifications.subscribe('sessions#create/post_hook') do |*args|
  JellyNotification.send(*args)
end
```