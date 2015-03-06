module JellyfishNotice
  class UserMailer < ActionMailer::Base
    default from: ENV['PJ_SMTP_DEFAULT_SENDER']

    def simple_notification(*args)
      @name    = args[0] # => String, name of the event
      @start   = args[1] # => Time, when the instrumented block started execution
      @finish  = args[2] # => Time, when the instrumented block ended execution
      @id      = args[3] # => String, unique ID for this notification
      @payload = args[4] # => Hash, the payload
      Rails.logger.info(@name)
      Rails.logger.info(@start)
      Rails.logger.info(@finish)
      Rails.logger.info(@id)
      Rails.logger.info(@payload)
      mail(template_path: 'user_mailer', to: ENV['PJ_SMTP_DEFAULT_RECIPIENT'], subject: "A #{@name} event has occurred")
    end
  end
end