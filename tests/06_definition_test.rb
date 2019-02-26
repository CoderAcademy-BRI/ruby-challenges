require 'test/unit'
require_relative '../06_definition'

class UniqueTest < Test::Unit::TestCase
  def test_definition_add_word
    definition = Definition.new
    assert_nothing_raised do
      definition.add_word('ruby', 'A precious stone')
    end
  end
  def test_definition_total_words
    definition = Definition.new
    definition.add_word('ruby', 'A precious stone')
    assert_equal(1, definition.total_words)
    definition.add_word('rails', 'Lorem ipsum')
    assert_equal(2, definition.total_words)
  end
  def test_definition_lookup
    definition = Definition.new
    definition.add_word('ruby', 'A precious stone')
    definition.add_word('rails', 'Lorem ipsum')
    assert_equal('A precious stone', definition.lookup('ruby'))
    assert_equal('Lorem ipsum', definition.lookup('rails'))
  end
end