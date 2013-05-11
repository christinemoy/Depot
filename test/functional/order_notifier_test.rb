require 'test_helper'

class OrderNotifierTest < ActionMailer::TestCase
  test "received" do
    mail = OrderNotifier.received(orders(:one))
    assert_equal "Store Order Confirmation", mail.subject
    assert_equal ["dave@example.org"], mail.to
    assert_equal ["christinemoy@gmail.com"], mail.from
  end

  test "shipped" do
    mail = OrderNotifier.shipped(orders(:one))
    assert_equal "Store Order Shipped", mail.subject
    assert_equal ["dave@example.org"], mail.to
    assert_equal ["christinemoy@gmail.com"], mail.from
  end

end
