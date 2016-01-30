require 'test/unit'
require_relative 'stack'

class TestStack < Test::Unit::TestCase
  def setup
    @stack = Stack.new
  end

  def test_empty_by_new_stack
    assert @stack.empty?
  end

  def test_push_3_and_pop
    @stack.push 3
    assert_equal 3, @stack.pop
  end

  def test_size_by_datum_stored_stack
    @stack.push 3
    assert_equal 1, @stack.size
  end
end
