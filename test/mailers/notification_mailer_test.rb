require 'test_helper'

class NotificationMailerTest < ActionMailer::TestCase
  test "following_solicitation" do
    mail = NotificationMailer.following_solicitation
    assert_equal "Following solicitation", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
