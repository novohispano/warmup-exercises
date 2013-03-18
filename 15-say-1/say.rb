class Say
  def initialize(number)
    @number = number
  end

  def self.in_english
    @english_numbers(@number)
  end

  def english_numbers(number)
    @english_numbers = {
      1  => "one",
      2  => "two",
      3  => "three",
      4  => "four",
      5  => "five",
      6  => "six",
      7  => "seven",
      8  => "eight",
      9  => "nine",
      10 => "ten"
    }
  end
end