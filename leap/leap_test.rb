#!/usr/bin/env ruby
gem 'minitest', '>= 5.0.0'
require 'minitest/autorun'
require_relative 'leap'

# Test data version:
# 7b0949e
class Date
  def leap?
    raise RuntimeError, "Implement this yourself instead of using Ruby's implementation."
  end

  alias gregorian_leap? leap?
  alias julian_leap? leap?
end

class YearTest < Minitest::Test
  def test_leap_year
    assert Year.leap?(1996), "Expected 'true', 1996 is a leap year."
  end

  def test_standard_and_odd_year
    refute Year.leap?(1997), "Expected 'false', 1997 is not a leap year."
  end

  def test_standard_even_year
    refute Year.leap?(1998), "Expected 'false', 1998 is not a leap year."
  end

  def test_standard_nineteenth_century
    refute Year.leap?(1900), "Expected 'false', 1900 is not a leap year."
  end

  def test_standard_eighteenth_century
    refute Year.leap?(1800), "Expected 'false', 1800 is not a leap year."
  end

  def test_leap_twenty_fourth_century
    assert Year.leap?(2400), "Expected 'true', 2400 is a leap year."
  end

  def test_leap_y2k
    assert Year.leap?(2000), "Expected 'true', 2000 is a leap year."
  end
end
