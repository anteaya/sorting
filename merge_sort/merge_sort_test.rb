require File.join(File.dirname(__FILE__), 'merge_sort')
require 'test/unit'

class TestMergeSort < Test::Unit::TestCase
  def test_acceptance
    assert_equal([1, 2, 4, 5, 8], MergeSort.new([5, 1, 4, 2, 8]).sort)
  end

  def test_initialize
    array = MergeSort.new([1, 3, 2])
    assert_equal([1, 3, 2], array.array)
  end
  
  def test_zero_element_sort
    assert_equal([], MergeSort.new([]).sort)
  end

  def test_one_element_sort
    assert_equal([3], MergeSort.new([3]).sort)
  end

  def test_two_element_sort
    assert_equal([2, 4], MergeSort.new([4, 2]).sort)
  end

  def test_three_element_sort
    assert_equal([3, 7, 9], MergeSort.new([9, 7, 3]).sort)
  end
end
