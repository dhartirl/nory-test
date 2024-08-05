require "test_helper"

class OrderTest < ActiveSupport::TestCase
  test "confirming removes stock" do
    order_to_confirm = orders(:one)
    chicken = ingredients(:chicken)

    assert_equal chicken.quantity, 8

    order_to_confirm.confirm!
    
    assert_equal chicken.quantity, 7
  end
end
