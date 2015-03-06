require 'spec_helper'

describe JellyfishNotice do
  it 'should receive notification on post user login hook' do
    allow(JellyfishNotice::UserMailer).to receive(:simple_notification) { double('mailer', deliver: nil) }

    ActiveSupport::Notifications.instrument('sessions#create/post_hook')

    expect(JellyfishNotice::UserMailer).to have_received(:simple_notification)
  end
  it 'should receive notification on post user loggout hook' do
    allow(JellyfishNotice::UserMailer).to receive(:simple_notification) { double('mailer', deliver: nil) }

    ActiveSupport::Notifications.instrument('sessions#destroy/post_hook')

    expect(JellyfishNotice::UserMailer).to have_received(:simple_notification)
  end
end
