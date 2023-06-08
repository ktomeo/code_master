# generates computer inputs
class Computer
  attr_accessor :computer_code

  def initialize
    @computer_code = []
  end

  def generate_code
    4.times do
      code = rand(6)
      if code == 0
        @computer_code.push('red')
      elsif code == 1
        @computer_code.push('green')
      elsif code == 2
        @computer_code.push('yellow')
      elsif code == 3
        @computer_code.push('blue')
      elsif code == 4
        @computer_code.push('orange')
      elsif code == 5
        @computer_code.push('purple')
      end
    end
  end
end
