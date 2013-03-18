class WordProblem
  attr_reader :parts

  def initialize(question)
    @parts = question.split
  end

  def answer
    if @parts.count == 5
    case @parts[3]
      when "plus"
        @parts[2].to_i + @parts[4].to_i
      when "minus"
        @parts[2].to_i - @parts[4].to_i
      end
    end
  end
end