require 'test/unit'
require_relative '../22_exes_ohs'

class ExesOhsTest < Test::Unit::TestCase
  def test_simple_two_chars_same_case
    assert_equal(true, exes_and_ohs("ooxx"))
    assert_equal(false, exes_and_ohs("oox"))
  end
  def test_simple_two_chars_diff_case
    assert_equal(true, exes_and_ohs("oOxx"))
    assert_equal(false, exes_and_ohs("oOx"))
  end
  def test_medium_two_chars_not_xo
    assert_equal(true, exes_and_ohs("eeff"))
    assert_equal(false, exes_and_ohs("eef"))
  end
  def test_medium_two_chars_not_xo_unmatched_case
    assert_equal(true, exes_and_ohs("eEFf"))
    assert_equal(false, exes_and_ohs("eEf"))
  end
  def test_hard_more_than_two_chars
    assert_equal(false, exes_and_ohs("ooxxe"))
    assert_equal(false, exes_and_ohs("abc"))
  end
end
