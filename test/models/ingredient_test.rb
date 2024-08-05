require "test_helper"

class IngredientTest < ActiveSupport::TestCase
  test "returns the correct quantity" do
    assert_equal ingredients(:chicken).quantity, 8
  end
end
