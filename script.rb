# main game function
class CodeMaster
  attr_accessor :player

  def available_colors
    puts "the colors available are: 'red', 'green', 'yellow', 'blue', 'orange', 'purple'"
  end

  def initialize
    puts "crack the computer's code!"
    @player = new.Human
    @bot = new.Computer
    available_colors
  end
end

# recieves player inputs
class Human
  attr_accessor :human_guess

  def initialize
    @human_guess = []
  end
end

# generates computer inputs
class Computer
  attr_accessor :computer_code

  def initialize
    @computer_code = []
  end
end