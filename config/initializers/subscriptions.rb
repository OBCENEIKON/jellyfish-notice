ActiveSupport::Notifications.subscribe('sessions#create/pre_hook') do |*args|
  JellyfishNotice.send(*args)
end

ActiveSupport::Notifications.subscribe('sessions#create/post_hook') do |*args|
  JellyfishNotice.send(*args)
end

ActiveSupport::Notifications.subscribe('sessions#destroy/pre_hook') do |*args|
  JellyfishNotice.send(*args)
end

ActiveSupport::Notifications.subscribe('sessions#destroy/post_hook') do |*args|
  JellyfishNotice.send(*args)
end
