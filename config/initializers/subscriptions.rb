# User Login Hooks
ActiveSupport::Notifications.subscribe('sessions#create/pre_hook') do |*args|
  JellyfishNotice.send(*args)
end
# ActiveSupport::Notifications.subscribe('sessions#create/post_hook') do |*args|
#   JellyfishNotice.send(*args)
# end

# User Loggout Hooks
# ActiveSupport::Notifications.subscribe('sessions#destroy/pre_hook') do |*args|
#   JellyfishNotice.send(*args)
# end
ActiveSupport::Notifications.subscribe('sessions#destroy/post_hook') do |*args|
  JellyfishNotice.send(*args)
end

# Project Create Hooks
# ActiveSupport::Notifications.subscribe('projects#create/pre_hook') do |*args|
#   JellyfishNotice.send(*args)
# end
# ActiveSupport::Notifications.subscribe('projects#create/post_hook') do |*args|
#   JellyfishNotice.send(*args)
# end

# Project Update Hooks
# ActiveSupport::Notifications.subscribe('projects#update/pre_hook') do |*args|
#   JellyfishNotice.send(*args)
# end
# ActiveSupport::Notifications.subscribe('projects#update/post_hook') do |*args|
#   JellyfishNotice.send(*args)
# end

# Project Destroy Hooks
# ActiveSupport::Notifications.subscribe('projects#destroy/pre_hook') do |*args|
#   JellyfishNotice.send(*args)
# end
# ActiveSupport::Notifications.subscribe('projects#destroy/post_hook') do |*args|
#   JellyfishNotice.send(*args)
# end

# Project Approval Hooks
# ActiveSupport::Notifications.subscribe('project_approvals#update/pre_hook') do |*args|
#   JellyfishNotice.send(*args)
# end
# ActiveSupport::Notifications.subscribe('project_approvals#update/post_hook') do |*args|
#   JellyfishNotice.send(*args)
# end

# Project Rejection Hooks
# ActiveSupport::Notifications.subscribe('project_approvals#destroy/pre_hook') do |*args|
#   JellyfishNotice.send(*args)
# end
# ActiveSupport::Notifications.subscribe('project_approvals#destroy/post_hook') do |*args|
#   JellyfishNotice.send(*args)
# end

# Staff Create Hooks
# ActiveSupport::Notifications.subscribe('staff#create/pre_hook') do |*args|
#   JellyfishNotice.send(*args)
# end
# ActiveSupport::Notifications.subscribe('staff#create/post_hook') do |*args|
#   JellyfishNotice.send(*args)
# end

# Staff Destroy Hooks
# ActiveSupport::Notifications.subscribe('staff#destroy/pre_hook') do |*args|
#   JellyfishNotice.send(*args)
# end
# ActiveSupport::Notifications.subscribe('staff#destroy/post_hook') do |*args|
#   JellyfishNotice.send(*args)
# end

# Project Staff Creation Hooks
# ActiveSupport::Notifications.subscribe('project_staff#create/pre_hook') do |*args|
#   JellyfishNotice.send(*args)
# end
# ActiveSupport::Notifications.subscribe('project_staff#create/post_hook') do |*args|
#   JellyfishNotice.send(*args)
# end

# Project Staff Destruction Hooks
# ActiveSupport::Notifications.subscribe('project_staff#destroy/pre_hook') do |*args|
#   JellyfishNotice.send(*args)
# end
# ActiveSupport::Notifications.subscribe('project_staff#destroy/post_hook') do |*args|
#   JellyfishNotice.send(*args)
# end

# Manage IQ Product Create Hooks
# ActiveSupport::Notifications.subscribe('manage_iq_products#create/pre_hook') do |*args|
#   JellyfishNotice.send(*args)
# end
# ActiveSupport::Notifications.subscribe('manage_iq_products#create/post_hook') do |*args|
#   JellyfishNotice.send(*args)
# end

# Manage IQ Product Update Hooks
# ActiveSupport::Notifications.subscribe('manage_iq_products#update/pre_hook') do |*args|
#   JellyfishNotice.send(*args)
# end
# ActiveSupport::Notifications.subscribe('manage_iq_products#update/post_hook') do |*args|
#   JellyfishNotice.send(*args)
# end

# Product Destory Hooks
# ActiveSupport::Notifications.subscribe('products#destroy/pre_hook') do |*args|
#   JellyfishNotice.send(*args)
# end
# ActiveSupport::Notifications.subscribe('products#destroy/post_hook') do |*args|
#   JellyfishNotice.send(*args)
# end

# Alert Create Hooks
# ActiveSupport::Notifications.subscribe('alerts#create/pre_hook') do |*args|
#   JellyfishNotice.send(*args)
# end
# ActiveSupport::Notifications.subscribe('alerts#create/post_hook') do |*args|
#   JellyfishNotice.send(*args)
# end

# Alert Update Hooks
# ActiveSupport::Notifications.subscribe('alerts#update/pre_hook') do |*args|
#   JellyfishNotice.send(*args)
# end
# ActiveSupport::Notifications.subscribe('alerts#update/post_hook') do |*args|
#   JellyfishNotice.send(*args)
# end
