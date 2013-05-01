class SumOfMultiples
  def self.to(input)
    @multiples = [0]

    multiples(3, input)
    multiples(5, input)

    add_multiples(@multiples)
  end

  def self.multiples(number, input)
    while @multiples.last > input
      multiplier += 1
      @multiples << (number * multiplier)
    end
    @multiples
  end

  def self.add_multiples(multiples)
    multiples.reduce(0) { |sum, multiple| sum + multiple }
  end

  def self.multiples_of_three
    [3, 6, 9, 12, 15]
  end

  def self.multiples_of_five
    [5, 10, 15, 20, 25]
  end
end