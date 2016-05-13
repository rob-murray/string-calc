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

  def test_another_complex_expression
    assert_equal 5, calc("2 TIMES 4 MINUS 3")
  end

  def test_more_complex_expression
    assert_equal 10, calc("10 DIV 2 PLUS 6 MINUS 1")
  end

  def test_precedence_ascending
    assert_equal 23, calc("4 TIMES 5 PLUS 3")
  end

  def test_order_of_precedence_decending
    assert_equal 23, calc("3 PLUS 4 TIMES 5")
  end
end
