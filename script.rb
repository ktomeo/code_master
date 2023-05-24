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
    available_colors
  end
end

CodeMasterGame.new
