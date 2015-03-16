def solution(a)
  return 1 if a.length == 0
  (1..(a.length + 1)).inject(:+) - a.inject(:+)
end

require 'minitest/autorun'

class Tests < MiniTest::Unit::TestCase
  def test_example_input
    assert_equal 4, solution([5, 2, 1, 3])
  end

  def test_empty_array
    assert_equal 1, solution([])
  end

  def test_two_elements
    assert_equal 2, solution([3, 1])
  end
end
