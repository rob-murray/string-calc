require "minitest/autorun"
require "./calc"

class TestCalculator < Minitest::Test
  def test_number
    assert_equal 5, calc("5")
  end

  def test_simple_expression
    assert_equal 3, calc("1 PLUS 2")
  end

  def test_complex_expression
    assert_equal 10, calc("2 PLUS 5 MINUS 1 PLUS 4")
  end
end