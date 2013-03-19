class Say
<<<<<<< HEAD
=======

  attr_reader :number
>>>>>>> 2235c334c938f047322006a0c956680cc4571ce8
  def initialize(number)
    @number = number
  end

  def in_english
<<<<<<< HEAD
    position = []

    position.tap do |position|
      position[0] = "#{@number / 1_000_000_000} billion"
      position[1] = "#{(@number % 1_000_000_000) / 1_000_000} million"
      position[2] = "#{(@number % 1_000_000) / 1_000} thousand"
      position[3] = "#{@number % 1_000}"
    end

    if position[0] == "0 billion" && position[1] == "0 million" && position[2] == "0 thousand"
      "#{position[3]}".gsub(" 0 thousand", "").gsub(" 0", "")
    elsif position[0] == "0 billion" && position[1] == "0 million"
      "#{position[2]} #{position[3]}".gsub(" 0", "")
    else # position[0] == "0 billion"
      "#{position[1]} #{position[2]} #{position[3]}".gsub(" 0", "")
    end
  end
end
=======
    unless number.between?(0, 1_000_000_000_000-1)
      raise ArgumentError.new "can't do that"
    end

    return "0" if number == 0

    s = ""
    s << "#{billions} billion" if billions > 0
    s << " #{millions} million" if millions > 0
    s << " #{thousands} thousand" if thousands > 0
    s << " #{hundreds}" if hundreds > 0
    s.strip
  end

  def hundreds
    @hundreds ||= number % 1_000
  end

  def thousands
    @thousand ||= number % 1_000_000 / 1000
  end

  def millions
    @millions ||= number % 1_000_000_000 / 1_000_000
  end

  def billions
    @billions ||= number / 1_000_000_000
  end
end
>>>>>>> 2235c334c938f047322006a0c956680cc4571ce8
