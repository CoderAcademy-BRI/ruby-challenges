require 'test/unit'
require_relative '../17_combine_hashes'

class CombineHashesTest < Test::Unit::TestCase
  def test_combine_hashes
    assert_equal({a: 8, b: 7, c: 14}, combine_hashes({a: 3, b: 5, c: 1}, {a: 5, b: 2, c: 13}))
  end
end