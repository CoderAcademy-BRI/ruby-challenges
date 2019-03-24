require 'test/unit'
require_relative '../21_sort_numbers'

class SortNumbersTest < Test::Unit::TestCase
  def test_no_repeats
    assert_equal([1,2,3], sort([2,1,3]))
    assert_equal([1,2,3,4,5,6,7,8,9,10], sort([10,9,8,7,6,5,4,3,2,1]))
  end
  def test_repeats
    assert_equal([1,2,2,3], sort([2,2,1,3]))
    assert_equal([2,4,6,6,7,7,9,11,11,13,13,15,15], sort([6,6,4,7,7,2,11,13,15,11,13,15,9]))
  end
end