class Game

  attr_reader :players
  attr_reader :sticks

  def initialize(players, sticks)
    @players = players
    @sticks = sticks
  end

  def random_start()
    ["Player 1", "Player 2"].sample
    # puts "#{random_start} you get to choose the number of sticks."
  end

  def number_of_players(players)
    if players.to_i == 2 or players.upcase == "TWO"

    elsif players.to_i == 1 or players.upcase == "ONE"
      @game_mode = "player_vs_machine"

    end
    @game_mode
  end

  def number_of_sticks(number)
    sticks = 10..100
    if sticks.include? number.to_i
       number.to_i
    else puts "Please enter a number between 10 and 100."
    end
  end

  def turns(input)
    turn = 1..3
    if turn.include? input.to_i
       input.to_i
    else
       puts "Please enter a number between 1 and 3."
    end
  end

end
