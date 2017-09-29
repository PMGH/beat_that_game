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

  def test_get_score()
    assert_equal([], @player1.get_score())
  end

  def test_player_can_roll_player1()
    pos_0 =  (1..6).include?(@player1.roll(@dice)[0])

    pos_1 = (1..6).include?(@player1.roll(@dice)[1])

    pos_2 = (1..6).include?(@player1.roll(@dice)[2])

    pos_3 = (1..6).include?(@player1.roll(@dice)[3])

    actual = [ pos_0, pos_1, pos_2, pos_3 ] # array
    expected = [true, true, true, true]

    assert_equal(expected, actual)
  end


end
