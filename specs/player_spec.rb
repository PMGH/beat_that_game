require('minitest/autorun')
require('minitest/rg')

require_relative("../player")
require_relative("../dice")

class TestPlayer < MiniTest::Test

	def setup()
		@player1 = Player.new("James")
    @player2 = Player.new("Peter")

    @dice1 = Dice.new(6)
    @dice2 = Dice.new(6)
    @dice3 = Dice.new(6)
    @dice4 = Dice.new(6)

    @dice = [ @dice1, @dice2, @dice3, @dice4 ]
	end


	def test_player_name__player1()
		assert_equal("James", @player1.get_name())
	end

  def test_player_name__player2()
		assert_equal("Peter", @player2.get_name())
	end

  def test_player_can_roll_player1()
    score = @player1.get_score()
    actual = 1..@dice1.get_sides(), (1..@dice1.get_sides()), (1..@dice1.get_sides()), (1..@dice1.get_sides()) ]
    assert_equal(actual, @player1.roll(@dice))
  end


end
