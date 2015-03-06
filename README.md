JellyNotification
=======
A notification system for Project Jellyfish.
#### Installation
Include in Gemfile: 
```
  gem 'jellyfish_notice' 
```

Add settings to your .env file:
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

Make sure that ```before_commit``` and ```after_commit``` hooks are defined on controllers:
```ruby
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

#### Custom Subscriptions
Jellyfish-notice comes preloaded with subscriptions to pre-defined events.
Subscriptions to other instrumented events can be placed in config/initializers/subscriptions.rb:
```ruby
ActiveSupport::Notifications.subscribe('sessions#create/pre_hook') do |*args|
  JellyfishNotice.send(*args)
end
ActiveSupport::Notifications.subscribe('sessions#create/post_hook') do |*args|
  JellyfishNotice.send(*args)
end
```
Events are instrumented using the following convention:
```ruby
controller_name + '#' + action_name + '/post_hook'
```
