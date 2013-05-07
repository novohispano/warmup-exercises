class Grains
  def square(squares)
    2**(squares-1)
  end

  def total
    (1..64).collect { |n| square(n) }.reduce(0, :+)
  end
end