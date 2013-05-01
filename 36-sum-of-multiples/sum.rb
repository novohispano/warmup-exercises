class SumOfMultiples
  def self.to(input)
    @multiples = []

    multiple_finder(multiples_of_three, input)
    multiple_finder(multiples_of_five, input)

    add_multiples(@multiples)
  end

  def self.multiple_finder(number_multiples, input)
    number_multiples.each do |multiple|
      if multiple < input
        @multiples << multiple
      end
    end
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