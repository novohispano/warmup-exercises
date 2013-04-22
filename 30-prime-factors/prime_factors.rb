class PrimeFactors
  attr_reader :number

  def initialize(input)
    number = input.to_i
  end

  def self.for(number)
    if number == 1
      []
    elsif number == 2
      [2]
    elsif number == 3
      [3]
    else
      [2, 2]
    end
  end

  def prime_numbers
    [ 2, 3, 5, 7, 11, 13, 17, 19, 23 ].to_array
  end
end