require("minitest/autorun")
require('minitest/rg')
require_relative("../card_game")
require_relative("../card")
require('pry')

class CardGameTest < MiniTest::Test

  def setup
    @card1 = Card.new("hearts",1)
    @card2 = Card.new("clubs",4)
    @cards = [@card1, @card2]
    @cardgame1 =CardGame.new
  end

  def test_checkforAce
    result = @cardgame1.checkforAce(@card1)
    assert_equal(true, result )
  end

  def test_highest_card
    result = @cardgame1.highest_card(@card1,@card2)
    assert_equal(@card2, result )
  end

  def test_cards_total
    result = CardGame.cards_total(@cards)
    assert_equal( "You have a total of 5", result)
  end

# why this is not working

  # def test_cards_total
  #   CardGame.cards_total(@cards)
  #   assert_equal(5, @total)
  # end


end
