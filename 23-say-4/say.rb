class Say
  attr_accessor :number

  def initialize(number)
    @number = number
  end

  def in_english
    case number
    when 0..19    then small_numbers(number)
    when 100..999 then hundred(number)
    end
  end

  def small_numbers(number)
    word_numbers = %w[ zero one two three four five six seven eight nine ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen ]
    position = (number % 100)
    word_numbers[position]
  end

  def tens(number)
    p_number = number.to_s.split("")

    p_number.to_i.each do |number|
      if p_number > 0
        word_number << small_numbers(number)
      end
      word_number
    end

    word_numbers = %w[ twenty thirty forty fifty sixty seventy eighty ninety ]
    position = (number % 100) / 10 - 2
    "#{word_numbers[position]}" + word_number
  end

  def hundred(number)
    word_numbers_hundreds = %w[ one two three four five six seven eight nine ]
    hundreds = (number / 100) - 1
    if number > 100
      "#{word_numbers_hundreds[hundreds]} hundred " << tens(number)
    else
      "#{word_numbers_hundreds[hundreds]} hundred"
    end
  end
end