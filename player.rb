class Player

	def initialize(name)
		@name = name
    @score = []
	end


  def get_name()
    return @name
  end

	def roll(dice)

    for die in dice
      @score << die.roll()
    end

    return @score
	end

end
