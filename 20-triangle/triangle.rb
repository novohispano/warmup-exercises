class Triangle
  def initialize(side1, side2, side3)
    @side1 = side1 
    @side2 = side2
    @side3 = side3
  end

  def self.triangle(side1, side2, side3)
    raise TriangleError.new("That is not a valid triangle") if side1 <= 0 || side2 <= 0 || side3 <= 0

    if side1 == side2 && side2 == side3
      :equilateral
    elsif side1 == side2 || side2 == side3 || side1 == side3
      :isosceles
    else
      :scalene
    end
  end
end

class TriangleError < Exception; end