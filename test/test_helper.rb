$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'minitest/unit'

class TestKata < MiniTest::Unit::TestCase
  def setup 
    @poker = Kata.new
  end

  def test_higher_rank
    assert_equal "white wins!", @poker.result({black: ['0C', 'KD'],  white: ['8C', 'AH'], table: ['4D', '2D', '6C', '3H', 'JH']})
    assert_equal "black wins!", @poker.result({black: ['9C', 'KD'],  white: ['8C', 'QH'], table: ['4D', '2D', '6C', '3H', 'JH']})
    assert_equal "Split the pot!", @poker.result({black: ['9S', 'KD'],  white: ['9C', 'KH'], table: ['4D', '2D', '6C', '3H', 'JH']})
    # assert_equal "white wins!", @poker.result({black: ['9S', 'KD'],  white: ['JC', 'KH'], table: ['4D', '2D', '6C', '3H', 'JH']})
  end
end
