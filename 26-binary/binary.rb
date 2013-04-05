class Binary
  attr_accessor :numbers

  def initialize(input)
    @numbers = input.split("").collect{ |chr| chr.to_i }.reverse
  end

  def to_decimal
    sum = 0
    @numbers.each_with_index do |number, i|
      sum += number * (2 ** i)
    end
    sum
  end
end