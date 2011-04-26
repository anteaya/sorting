require File.join(File.dirname(__FILE__), 'bubble_sort')
require 'test/unit'

class TestBubbleSort < Test::Unit::TestCase
  def test_acceptance
    assert_equal([1, 2, 4, 5, 8], BubbleSort.new([5, 1, 4, 2, 8]).sort) 
  end

  def test_initialize
    array = BubbleSort.new([1, 3, 2])
    assert_equal([1, 3, 2], array.array)
  end

  def test_two_element_sort
    assert_equal([2, 4], BubbleSort.new([4, 2]).sort)
  end

  def test_three_element_sort
    assert_equal([2, 4, 5], BubbleSort.new([5, 4, 2]).sort)
  end
end
