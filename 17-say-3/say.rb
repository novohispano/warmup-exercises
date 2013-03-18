class Say
  def initialize(number)
    @number = number
  end

  def in_english
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