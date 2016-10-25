gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/bottles'
require 'pry'

class BottlesTest < Minitest::Test

  def test_it_exists
    assert_instance_of Bottles, Bottles.new
  end

  def test_it_has_a_class
    bottles = Bottles.new

    assert_equal Bottles, bottles.class
  end

  def test_it_does_not_accept_negative_numbers
    bottles = Bottles.new

    assert_equal nil, bottles.sing_the_song(-3)
  end

  def test_it_does_not_accept_symbols
    bottles = Bottles.new

    assert_equal nil, bottles.sing_the_song("*")
  end

  def test_it_has_special_lyrics_when_zero_bottles
    bottles = Bottles.new

    assert_equal "No more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall.", bottles.sing_the_song(0)
  end

end
