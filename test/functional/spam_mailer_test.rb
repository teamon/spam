require 'test_helper'

class SpamMailerTest < ActionMailer::TestCase
  test "send_spam" do
    mail = SpamMailer.send_spam
    assert_equal "Send spam", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
