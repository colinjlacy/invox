require 'test_helper'

class InvoiceMailerTest < ActionMailer::TestCase
  test "email_invoice" do
    mail = InvoiceMailer.email_invoice
    assert_equal "Email invoice", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
