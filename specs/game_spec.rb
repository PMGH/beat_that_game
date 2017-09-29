require("minitest/autorun")
require("minitest/rg")

require_relative("../game")
require_relative("../player")
require_relative("../dice")


class TestGame < MiniTest::Test

  def setup()

    @player1 = Player.new("James")
    @player2 = Player.new("Peter")

    @players = [ @player1, @player2 ]

    @dice1 = Dice.new(6)
    @dice2 = Dice.new(6)
    @dice3 = Dice.new(6)
    @dice4 = Dice.new(6)

    @dice = [ @dice1, @dice2, @dice3, @dice4 ]

    @game = Game.new(@players, @dice)

  end


  def test_get_players()
    assert_equal(@players, @game.get_players())
  end

  def test_no_players
    assert_equal(2, @game.get_players().length())
  end

  def test_first_player()
    assert_equal(@player1, @game.get_players().first())
  end

  def test_get_dice()
    assert_equal(@dice, @game.get_dice())
  end

  def test_no_of_dice()
    assert_equal(4, @game.get_dice().length())
  end

  def test_game_can_roll__player1()
    @game.roll(@dice)
    actual = @player1.get_score().length()

    assert_equal(4, actual)
  end

  def test_formulate_score__is_int()
    @game.roll(@dice)
    # actual = @player1.get_score().sort.reverse.join.to_i

    assert_equal(true, @game.formulate_score().is_a?(Integer))
  end

  def test_formulate_score__length()
    @game.roll(@dice)
    # actual = @player1.get_score().sort.reverse.join.to_i

    assert_equal(4, @game.formulate_score().to_s().length())
  end

  def test_

  end

end
