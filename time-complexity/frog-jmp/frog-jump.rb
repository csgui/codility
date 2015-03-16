class XValueError < ArgumentError; end

def frog_jump(x, y, d)
  fail XValueError, "X value should be greater than Y value." if x > y
  ((y.to_f - x.to_f ) / d.to_f).ceil
end

require 'minitest/autorun'

class Tests < MiniTest::Unit::TestCase
  def test_example_input
    assert_equal 3, frog_jump(10, 85, 30)
  end

  def test_no_jump_needed
    assert_equal 0, frog_jump(10, 10, 30)
  end

  def test_exact_jump
    assert_equal 3, frog_jump(0, 90, 30)
  end

  def test_x_and_y_values
    assert_raises(XValueError) { frog_jump(10, 1, 10) }
  end
end
