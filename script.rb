require_relative './human'
require_relative './computer'

# main game function
class CodeMasterGame
  attr_accessor :player

  def available_colors
    puts "the available colors are: 'red', 'green', 'yellow', 'blue', 'orange', 'purple'"
  end

  def initialize
    puts "crack the computer's code!"
    @player = Human.new
    @bot = Computer.new
  end

  def start_game
    i = 0
    until win_condition
      if i == 12
        puts "you lose! you didn't crack the code!"
        break
      else
        available_colors
        @player.player_entry
        
        i += 1
      end
    end
  end

  def player_result
    puts @player
    puts "partially correct: #{var}"
    puts "matches: #{var2}"
  end

  def win_condition
    if @player == @bot
      puts 'you win! you guessed the code!'
    end
  end
end

CodeMasterGame.new.start_game
