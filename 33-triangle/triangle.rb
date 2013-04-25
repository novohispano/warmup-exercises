class Triangle
  attr_reader :unique_sides

  def initialize(a, b, c)
    sides = [a, b, c].sort
    @unique_sides = sides.uniq.count

    triangle_validator(sides)
  end

  def kind
    triangle_classes[unique_sides]
  end

  def triangle_classes
    {
      1 => :equilateral,
      2 => :isosceles,
      3 => :scalene,
    }
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