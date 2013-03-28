class Say
  attr_accessor :number

  def initialize(number)
    @number = number
  end

  def in_english
    case number
    when 0..9   then digits(number)
    when 10..19 then teens(number)
    when 100    then "one hundred"
    end
  end

  # def tens
  #   case number
  #   when 0 then "zero"
  #   when 1 then "one"
  #   when 2 then "two"
  #   when 3 then "zero"
  #   when 4 then "one"
  #   when 5 then "two"
  #   when 6 then "two"
  #   when 7 then "two"
  #   when 8 then "zero"
  #   when 9 then "one"
  #   end
  # end

  def digits(number)
    word_numbers = %w[ zero one two three four five six seven eight nine ]
    word_numbers[number]
  end

  def teens(number)
    word_numbers = %w[ ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen ]
    position = number % 10
    word_numbers[position]
  end
end