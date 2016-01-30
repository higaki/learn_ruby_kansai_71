require 'test/unit'
require_relative 'myarray'

class TestMyArray < Test::Unit::TestCase
  def setup
    @array = MyArray.new
  end

  def test_empty_by_empty_myarray
    assert @array.empty?
  end
end
