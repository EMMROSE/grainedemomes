require 'test_helper'

class GiftMailerTest < ActionMailer::TestCase
  test "confirmation" do
    mail = GiftMailer.confirmation
    assert_equal "Confirmation", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "information" do
    mail = GiftMailer.information
    assert_equal "Information", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
