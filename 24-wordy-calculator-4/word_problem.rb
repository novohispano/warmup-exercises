class WordProblem
  attr_reader :numbers,
              :operator

  def initialize(question)

    @numbers = question.scan(/\-?\d/).collect{ |i| i.to_i }
    @operator = question.scan(/plus/)
  end

  def answer
    case operator[0]
    when "plus"
      numbers[0] + numbers[1]
    when "minus"
      numbers[0] - numbers[1]
    end
  end
end