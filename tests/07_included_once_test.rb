require 'test/unit'
require_relative '../07_included_once'

class IncludedOnceTest < Test::Unit::TestCase
  def test_included_once
    assert_equal(false, included_once(['hello','hi','hi'], 'hi'))
    assert_equal(true, included_once(['hello','hi','hey'], 'hi'))
  end
  def test_included_once_no_matches
    assert_equal(false, included_once(['hello','hey','hey'], 'hi'))
  end
end
