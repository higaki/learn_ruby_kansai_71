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
end
