require 'test/unit'
require_relative 'person'

require 'kagemusha/time'
require 'mocha/setup'
require 'rr'

class TestPerson < Test::Unit::TestCase
  def setup
    @matz = Person.new('matz', Time.local(1965, 4, 14))
  end

  def test_age
    assert_equal 50, @matz.age
  end

  def test_age_by_kagemusha
    Kagemusha::Time.at(2016, 3, 5) do
      assert_equal 50, @matz.age
    end
  end

  def test_age_by_mocha
    Test.stubs(:now).returns(Time.local(2016, 3, 5))
    assert_equal 50, @matz.age
  end

  def test_age_by_rr
    mock(Time).now{Time.local(2016, 3, 5)}
    assert_equal 50, @matz.age
  end
end
