require("minitest/autorun")
require('minitest/rg')
require_relative("../card")
require('pry')

class CardTest < MiniTest::Test

  def setup
    @card1 = Card.new("hearts",1)

    @card2 = Card.new("clubs",4)
  end


  def test_card_has_suit
    assert_equal("hearts", @card1.suit)
  end

  def test_card_has_value
    assert_equal(1, @card1.value)
  end

end
