class Palindromes
  attr_reader :max,
              :min

  def initialize(args)
    @max = args[:max_factor]
    @min = args[:min_factor]
  end

  def generate
    palindromes = []

    (min..max).each do | number |
      number_string = []

      result = number * max
      number_string = result.to_s.split('')

      if number_string[0] == number_string[-1]
        palindromes << result
      end
    end

    palindromes
  end

  def largest
  end

  def factors
  end
end