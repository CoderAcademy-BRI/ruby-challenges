require 'test/unit'
require_relative '../25_remove_adjacent_duplicates'

class RemoveAdjacentDuplicatesTest < Test::Unit::TestCase
  def test_no_duplicates
    assert_equal("abcdef", remove_adjacent_duplicates("abcdef"))
    assert_equal("abcDEF", remove_adjacent_duplicates("abcDEF"))
  end
  def test_no_duplicates_mixed_case
    assert_equal("abcABC", remove_adjacent_duplicates("abcABC"))
    assert_equal("AaBbCc", remove_adjacent_duplicates("AaBbCc"))
  end
  def test_duplicates
    assert_equal("abc", remove_adjacent_duplicates("aabcc"))
    assert_equal("aAbCc", remove_adjacent_duplicates("aaAAbCCcc"))
    assert_equal("BbCcAa", remove_adjacent_duplicates("BbbCCcAa"))
  end
end