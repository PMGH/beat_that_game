require_relative('player')
require_relative('dice')


class Game

  # initialize
  def initialize(players, dice)
    @players = players
    @dice = dice
    @highest_score = 0
    @player_score = 0
    @won = false
    @draw = false
    # @ui = ui
  end

  # getters
  def get_players()
    return @players
  end

  def get_dice()
    return @dice
  end

  # behaviour

  def name()
    p "Player one, please enter your player name!"
    @player1 = gets.chomp
    puts
    p "Player two, please enter your player name!"
    @player2 = gets.chomp
    puts
    @players_joined = [@player1, @player2]
    play_game()
  end

  # Gmes gets Player to roll dice
  def roll(dice)
    p "Press enter to roll the dice"
    gets.chomp
    @player_score = @players[0].roll(dice)
    p "Hey #{@players_joined[0]}, you rolled #{@player_score}"
    formulate_score()
  end


  # Game formulates score (sort, reverse, join, to_i)
  def formulate_score()
    @player_score = @player_score.sort!().reverse!().join().to_i()
    p "#{@players_joined[0]}'s score is #{@player_score}"
    check_score()
  end

  # Game compares player_score to highest_score
  def check_score()
    if @player_score > @highest_score
      @highest_score = @player_score
      p "BEAT THAT!"
      puts
      @players_joined.rotate!()
      roll(@dice)
    elsif @player_score == @highest_score
      @draw = true
      end_game()
    else
      @won = true
      end_game()
    end
  end

  def play_game()
    roll(@dice)
  end

  def end_game()
    if @draw == true
      puts "Shit game guys. It was a draw."
    elsif @won == true
      puts "#{@players_joined[1]} won!!"
    end
  end

<<<<<<< HEAD
  # if player_score > highest_score:
      # assign player_score to highest_score
      # rotate @players
      # :play_game
  # else player_score == highest_score
      # @draw = true
  # :end_game


=======
>>>>>>> 4df956387c91e5af4f1bf2d0432c3fb892325aeb
end
