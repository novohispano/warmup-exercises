class Gigasecond
  require "time"

  def initialize
    puts "Gigasecond initialized..."
    @birthday
  end

  def run
    puts "Gigaseconf, initialized..."
    input = ""
    while input != "quit"
      printf "What's your birthday? "
      input = gets.chomp
      birthday_parser(input)
      puts gigasecond
    end
  end

  def gigasecond
    Time.at(@birthday.sec + 1_000_000_000)
  end

  def birthday_parser(date)
    @birthday = DateTime.parse(date)
  end
end

gigasecond = Gigasecond.new
gigasecond.run