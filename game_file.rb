require_relative('game')
require_relative('player')
require_relative('dice')

@player1 = Player.new("James")
@player2 = Player.new("Peter")

@players = [ @player1, @player2 ]

@dice1 = Dice.new(6)
@dice2 = Dice.new(6)
@dice3 = Dice.new(6)
@dice4 = Dice.new(6)

@dice = [ @dice1, @dice2, @dice3, @dice4 ]

@game = Game.new(@players, @dice)

@game.play_game()
