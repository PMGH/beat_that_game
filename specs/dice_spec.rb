require('minitest/autorun')
require('minitest/rg')

require_relative("../dice")

class TestDice < MiniTest::Test
	def setup()
		@dice = Dice.new(6)
	end

  def test_dice_sides()
    assert_equal(6, @dice.get_sides())
  end

	def test_dice_roll()
		assert((1..6), @dice.roll())
	end

end
