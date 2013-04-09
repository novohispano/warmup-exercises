class SecretHandshake
  attr_reader :numbers

  def initialize(input)
    @numbers = input.split('').collect{ |chr| chr.to_i }.reverse
  end

  def convert_to_binary
    sum = 0
    numbers.each_with_index do |number, index|
      sum += number * (2 ** index)
    end
    sum
  end

  def commands
    actions = [ "a", "wink", "double blink", "b", "close your eyes", "c", "d", "e", "jump"]
    [actions[convert_to_binary]]
  end
end