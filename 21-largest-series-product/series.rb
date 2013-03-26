class Series
  attr_reader :digits

  def initialize(number_string)
    @digits = number_string.split('').collect{ |number| number.to_i }.sort
  end

  def slices(slices)
    digits.each_slice(slices).to_a
  end
end