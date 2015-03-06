require 'jellyfish_notice/engine'

module JellyfishNotice
  def self.send(*args)
    UserMailer.simple_notification(*args).deliver
  end
end
