require 'sticks'

describe Game do
  context 'Start a new game.' do
    it 'creates new game instance' do
      # Arrange

      # Act
      game = Game.new(2, 20)
      # Assert
      expect(game.players).to be 2
      expect(game.sticks).to be 20

    end
  end
end

describe '#random_start' do
  context 'random assignment for which player chooses the number of sticks when beginning a game' do
    it 'randomly chooses between Player 1 and Player 2' do
      game = Game.new(2, 20)

      player = game.random_start

      expect(player).to eq("Player 1").or eq("Player 2")
    end
  end
end

describe '#number_of_players' do
  context 'selects mode based on number of players when beginning a game' do
    it 'validates number of players' do
      game = Game.new(2, 20)

      input = "ONE"

      expect(game.number_of_players(input)).to eq "player_vs_machine"

    end
  end
end

describe '#number_of_sticks' do
  context 'number of sticks when beginning a game' do
    it 'validates the number sticks' do
      game = Game.new(2, 20)

      input = "10"

      expect(game.number_of_sticks(input)).to eq 10

    end
  end
end

describe '#turns' do
  context 'during the game the turns each player gets will be decrmented' do
    it 'subtracts turns based on the number of sticks a player picks up' do
      game = Game.new(2, 20)

      input = 2

      expect(game.turns(input)).to eq 2

    end
  end
end


# Decide on the data structure(s) that you are going to need to use to represent the state of the game when played.
# Decide on the tasks that will be part of the game loop.
# Write test function(s) for a single task.
# Write function(s) for the task and make sure your test(s) pass.
# Repeat steps 3 and 4 until all tasks are implemented.
# Write a main() function with a game loop that uses your already tested and developed functionality in conjunction with getting user input and printing output.
