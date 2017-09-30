require_relative('player')
require_relative('dice')

class Game

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
  # def play_game()
  #   roll(@dice)
  # end

  # Player rolls dice
  def roll(dice)
    p "Press enter to roll the dice"
    gets.chomp
    @player_score = @players[0].roll(dice)
    p "Hey #{@players[0].get_name}, you rolled #{@player_score}"
    formulate_score()
  end


  # Game formulates score (sort, reverse, join, to_i)
  def formulate_score()
    @player_score = @player_score.sort!().reverse!().join().to_i()
    p "#{@players[0].get_name}'s score is #{@player_score}"
    check_score()
  end

  # Game compares player_score to highest_score
  def check_score()
    if @player_score > @highest_score
      @highest_score = @player_score
      p "BEAT THAT!"
      @players.rotate!()
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
      puts "#{@players[1].get_name()} won!!"
    end
  end

    # if player_score > highest_score:
      # assign player_score to highest_score
      # rotate @players
      # :play_game
    # else player_score == highest_score
      # @draw = true
    # :end_game


end
