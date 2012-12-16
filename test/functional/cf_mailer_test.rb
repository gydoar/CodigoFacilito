require 'test_helper'

class CfMailerTest < ActionMailer::TestCase
  test "ser_tutor" do
    mail = CfMailer.ser_tutor
    assert_equal "Ser tutor", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
