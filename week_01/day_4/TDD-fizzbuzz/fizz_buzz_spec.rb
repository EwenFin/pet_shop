require('minitest/autorun')
require('minitest/rg')
require_relative('./fizz_buzz.rb')

class FizzBuzzSpec < MiniTest::Test

  def test_3_returns_fizz
    assert_equal( "Fizz", fizz_buzz(3) )
  end

  def test_5_returns_buzz
    assert_equal( "Buzz", fizz_buzz(5) )
  end

  def test_10_returns_buzz
    assert_equal( "Buzz", fizz_buzz(10) )
  end

  def test_6_returns_fizz
    assert_equal( "Fizz", fizz_buzz(6) )
  end

  def test_15_returns_fizzbuzz
    assert_equal( "FizzBuzz", fizz_buzz(15) )
  end

  def test_37_returns_string_37
    assert_equal( "37", fizz_buzz(37) )
  end

  def test_0_returns_fizzbuzz
    assert_equal( "FizzBuzz", fizz_buzz(0) )
  end

end
