class Triangle
  attr_accessor :unique_sides

  def initialize(a, b, c)
    sides = [a, b, c].sort
    @unique_sides = sides.uniq.count
    triangle_validator(sides)
  end

  def kind
    if unique_sides == 1
      :equilateral
    elsif unique_sides == 2
      :isosceles
    else
      :scalene
    end
  end

  def triangle_validator(sides)
    sides.each do |side|
      raise TriangleError if side <= 0
    end

    if (sides[0] + sides[1]) <= sides[2]
      raise TriangleError
    end
  end
end

class TriangleError < Exception
end