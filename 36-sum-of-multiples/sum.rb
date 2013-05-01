class SumOfMultiples
  def self.to(input)
    @multiples = [0]

    multiples(3, input)
    multiples(5, input)

    add_multiples(@multiples.uniq)
  end

  def self.multiples(multiple, input)
    current_multiple = multiple

    while input > current_multiple
      @multiples << current_multiple
      current_multiple += multiple
    end
    @multiples
  end

  def self.add_multiples(multiples)
    multiples.reduce(0, &:+)
  end
end