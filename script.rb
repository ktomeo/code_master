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
    @bot.generate_code
    i = 12
    until i.zero? do
      if @player.human_guess == @bot.computer_code
        win_condition
        break
      else
        @player.player_entry

        player_result
        i -= 1
        puts "you have #{i} turns(s) remaining"
      end
    end
    if i.zero?
      puts 'you ran out of turns. you lose!'
    end
  end

  def player_result
    puts
    puts "you guessed #{@player.human_guess}"
    puts "partial matches: "
    puts "matches: #{compare_arrays}"
    puts
    available_colors
  end

  def win_condition
    puts 'you win! you guessed the code!'
  end

  def compare_arrays
    count = 0
    @bot.computer_code.each_with_index do |color, index|
      if color == @player.human_guess[index]
        count += 1
      end
    end
    count
  end
end

CodeMasterGame.new.start_game
