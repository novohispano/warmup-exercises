class Squares
  attr_reader :number

  def initialize(input)
    @number = input
  end

  def square_of_sums
    (1..number).reduce(0, :+) ** 2
  end

  def sum_of_squares
    sum = 0

    (1..number).each do |i|
      sum += i ** 2
    end

    sum
  end

  def difference
    square_of_sums - sum_of_squares
  end
end