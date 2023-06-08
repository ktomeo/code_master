# recieves player inputs
class Human
  attr_accessor :human_guess

  def initialize
    @human_guess = []
  end

  def player_entry
    @human_guess = []
    4.times do
      @human_guess.push(gets.chomp.downcase)
    end
  end
end
