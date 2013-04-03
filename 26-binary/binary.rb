class Binary
  attr_reader :number

  def initialize(input)
    @number = input.split("")
  end

  def to_decimal
    sum = 0
    number.each_with_index do |binary, index| 
      if binary == "1"
        sum += 1
      return sum
    end
  end
end