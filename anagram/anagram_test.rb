#!/usr/bin/env ruby
gem 'minitest', '>= 5.0.0'
require 'minitest/autorun'
require_relative 'anagram'

# Test data version:
# 6a886e0
class AnagramTest < Minitest::Test
  def test_no_matches
    # skip
    detector = Anagram.new('diaper')
    anagrams = detector.match(["hello", "world", "zombies", "pants"])
    assert_equal [], anagrams
  end

  def test_detects_simple_anagram
  #  skip
    detector = Anagram.new('ant')
    anagrams = detector.match(["tan", "stand", "at"])
    assert_equal ["tan"], anagrams
  end

  def test_does_not_detect_false_positives
  #  skip
    detector = Anagram.new('galea')
    anagrams = detector.match(["eagle"])
    assert_equal [], anagrams
  end

  def test_detects_multiple_anagrams
  #  skip
    detector = Anagram.new('master')
    anagrams = detector.match(["stream", "pigeon", "maters"])
    assert_equal ["maters", "stream"], anagrams.sort
  end

  def test_does_not_detect_anagram_subsets
  #  skip
    detector = Anagram.new('good')
    anagrams = detector.match(["dog", "goody"])
    assert_equal [], anagrams
  end

  def test_detects_anagram
  #  skip
    detector = Anagram.new('listen')
    anagrams = detector.match(["enlists", "google", "inlets", "banana"])
    assert_equal ["inlets"], anagrams
  end

  def test_detects_multiple_anagrams
  #  skip
    detector = Anagram.new('allergy')
    anagrams = detector.match(["gallery", "ballerina", "regally", "clergy", "largely", "leading"])
    assert_equal ["gallery", "largely", "regally"], anagrams.sort
  end

  def test_does_not_detect_identical_words
  #  skip
    detector = Anagram.new('corn')
    anagrams = detector.match(["corn", "dark", "Corn", "rank", "CORN", "cron", "park"])
    assert_equal ["cron"], anagrams
  end

  def test_does_not_detect_non_anagrams_with_identical_checksum
  #  skip
    detector = Anagram.new('mass')
    anagrams = detector.match(["last"])
    assert_equal [], anagrams
  end

  def test_detects_anagrams_case_insensitively
  #  skip
    detector = Anagram.new('Orchestra')
    anagrams = detector.match(["cashregister", "Carthorse", "radishes"])
    assert_equal ["Carthorse"], anagrams
  end

  def test_detects_anagrams_using_case_insensitive_subject
#    skip
    detector = Anagram.new('Orchestra')
    anagrams = detector.match(["cashregister", "carthorse", "radishes"])
    assert_equal ["carthorse"], anagrams
  end

  def test_detects_anagrams_using_case_insensitive_possible_matches
    #skip
    detector = Anagram.new('orchestra')
    anagrams = detector.match(["cashregister", "Carthorse", "radishes"])
    assert_equal ["Carthorse"], anagrams
  end

  def test_does_not_detect_a_word_as_its_own_anagram
  #  skip
    detector = Anagram.new('banana')
    anagrams = detector.match(["Banana"])
    assert_equal [], anagrams
  end

  def test_does_not_detect_a_anagram_if_the_original_word_is_repeated
  #  skip
    detector = Anagram.new('go')
    anagrams = detector.match(["go Go GO"])
    assert_equal [], anagrams
  end

  def test_anagrams_must_use_all_letters_exactly_once
  #  skip
    detector = Anagram.new('tapper')
    anagrams = detector.match(["patter"])
    assert_equal [], anagrams
  end

  def test_capital_word_is_not_own_anagram
    #skip
    detector = Anagram.new('BANANA')
    anagrams = detector.match(["Banana"])
    assert_equal [], anagrams
  end

end
