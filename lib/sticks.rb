class Game

  attr_reader :players, :sticks, :remaining_sticks

  def initialize(players, sticks)
    @players = players
    @sticks = sticks
    @game_mode = ["player_vs_player", "player_vs_machine"]
    @remaining_sticks = @sticks
  end

  def random_start()
    ["Player 1", "Player 2"].sample
    # puts "#{random_start} you get to choose the number of sticks."
  end

  def number_of_players(players)
    if players.to_i == 2 or players.upcase == "TWO"
      game_mode = @game_mode[0]
    elsif players.to_i == 1 or players.upcase == "ONE"
      game_mode = @game_mode[1]
    end
      game_mode
  end

  def lay_down_sticks(number)
    sticks = 10..100
    if sticks.include? number.to_i
       number.to_i
    else puts "Please enter a number between 10 and 100."
    end
  end

  def pick_up_sticks(input)
    valid_number_of_sticks = 1..3
    if valid_number_of_sticks.include? input.to_i
       input.to_i
    else
       puts "Please enter a number between 1 and 3."
    end
  end

  def play_sticks(input)
    @remaining_sticks = (sticks - pick_up_sticks(input))
    remaining_sticks
  end

end
