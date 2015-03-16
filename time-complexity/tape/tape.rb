#
# Elegant, but slow solution
#
def slow_solution (a)
  Array.new.tap do |res|
    a.each_with_index do |_, i|
      if i > 0
        res << (a.take(i).inject(:+) - a.drop(i).inject(:+)).abs
      end
    end
  end.min
end

#
# Faster solution than previous
#
def fast_solution (a)
  ary_sum_left = Array.new
  ary_sum_right = Array.new
  sum_left = 0
  sum_right = 0

  a.each_with_index do |e, i|
    if i < a.length - 1
      sum_left += e
      ary_sum_left << sum_left
      sum_right += a[a.length - i - 1]
      ary_sum_right << sum_right
    end
  end

  Array.new.tap do |diff|
    ary_sum_left.each_with_index do |e, i|
      diff << (e - ary_sum_right[ary_sum_right.length - i - 1]).abs
    end
  end.min
end

require 'minitest/autorun'

class Tests < MiniTest::Unit::TestCase
  def test_input
    assert_equal 1, solution([3,1,2,4,3])
  end
end
