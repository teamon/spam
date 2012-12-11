class SpamMailer < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.spam_mailer.send_spam.subject
  #
  def send_spam
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
