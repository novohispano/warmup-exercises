class WordProblem
  attr_reader :parts

  def initialize(question)
    @parts = question.split
  end

  def answer
  case parts[3]
    when parts[3] = "plus"
      @parts[2].to_i + @parts[4].to_i
    when parts[3] = "minus"
      @parts[2].to_i - @parts[4].to_i
    when parts[3] = "multiplied"
      @parts[2].to_i * @parts[5].to_i
    when parts[3] = "divided"
      @parts[2].to_i / @parts[5].to_i
    else
      raise ArgumentError
    end
  end
end