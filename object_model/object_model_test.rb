require 'test/unit'
require_relative 'alphanumeric'
require_relative 'replace'

class ObjectModelTest < Test::Unit::TestCase

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    # Do nothing
  end

  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def teardown
    # Do nothing
  end

  def test_to_alphanumeric
    assert_equal '3 the Magic Number', '#3, the *Magic, Number*?'.to_alphanumeric
  end

  def test_substitute
    original = %w(one two one three)
    replaced = original.substitute('one', 'zero')
    assert_equal %w(zero two zero three), replaced
  end
end
