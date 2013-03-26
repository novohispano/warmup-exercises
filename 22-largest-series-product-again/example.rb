class Series
  def initialize(serie)
    @numbers = serie.split('').collect{ |number| number.to_i }
  end

  def digits
    @numbers
  end

  def slices(parts)
    slices = []
    @numbers.count.times do |number|
      slices << @numbers[number..number + parts]
    end
    slices.reject{ |number| number.count != parts }
  end
end