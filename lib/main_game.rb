require_relative 'sticks'

def main
  puts "#{random_start} you get to choose the number of sticks."
  sleep (1)
  puts "How many sticks do you want to pickup?"
  sticks = number_of_sticks(gets.chomp)

  

end
main if __FILE__ == $PROGRAM_NAME
