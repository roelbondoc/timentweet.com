class Notifier < ActionMailer::Base
  def notification(params)
    recipients 'rsbondoc@gmail.com'
    from       'noreply@timentweet.com'
    subject    'Message Sent from Timentweet.com'
    body       params
  end
end
