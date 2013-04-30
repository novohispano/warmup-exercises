class Phone
  def initialize(input)
    @number = input.gsub(/\D/, '')
  end

  def number
    if @number.length == 11 && @number[0] == "1"
      @number[1..-1]
    elsif @number.length != 10
      "0000000000"
    else
      @number
    end
  end

  def area_code
    @number[0..2]
  end

  def to_s
    "(#{area_code}) #{@number[3..5]}-#{@number[6..10]}"
  end
end