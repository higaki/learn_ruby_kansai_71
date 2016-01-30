require 'test/unit'
require_relative 'stack'

class TestStack < Test::Unit::TestCase
  def setup
    @stack = Stack.new
  end

  def test_empty_by_new_stack
    assert @stack.empty?
  end
end
