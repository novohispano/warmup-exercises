class Trinary
  attr_reader :numbers

  def initialize(input)
    @numbers = input.split("").collect{ |chr| chr.to_i }
  end

  def to_decimal
    sum = 0
    numbers.each_with_index do |number, index|
        numbers[index] = number
    end.reduce(:+)
  end
end

# get the positions in the array
# get 