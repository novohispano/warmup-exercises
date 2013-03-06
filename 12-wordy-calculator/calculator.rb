class Calculator
  attr_reader :questions_a

  def setup
    @calculator = Calculator.new
  end

  def ask(question)
    processed_question(question)
    if @question_a.count == 4
      @question_a[2].to_i + @question_a[4].to_i
    else
      @question_a[2].to_i + @question_a[4].to_i + @question_a[6].to_i
    end
  end

  def processed_question(question)
    @question_a = question.split
  end
end