require_relative 'sticks'

=begin
The puts and gets statements can better be implemented in functions in the main

welcome_to_game()
=>   puts "Welcome to the Game of Sticks!"
=>   sleep (1)
=>   puts "How many players (1 or 2)?"
=>   players = number_of_players(gets.chomp)

set_game_board()
=>   puts "#{game.random_start} you get to choose the number of sticks (Betweek 10 - 100)"
=>   sleep (1)
=>   puts "How many sticks do you want to play with?"
=>   sticks = lay_down_sticks(gets.chomp)p
=end

def main
  puts "Welcome to the Game of Sticks!"
  sleep (1)
  puts "How many players (1 or 2)?"
  players = number_of_players(gets.chomp)
  puts "#{game.random_start} you get to choose the number of sticks (Betweek 10 - 100)"
  sleep (1)
  puts "How many sticks do you want to play with?"
  sticks = lay_down_sticks(gets.chomp)

  game = Game.new(players, sticks)


  #
  # while game is in process
  #
  # end
  #


end
main if __FILE__ == $PROGRAM_NAME
