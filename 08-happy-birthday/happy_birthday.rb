require 'date'

class HappyBirthday

  def run
    puts "Initializing..."
    input = ""
    while input != "quit"
      printf "When where you born? "
      input = gets.chomp
      birthday = Date.new(input)

      years = Date.now - birthday
      years.each do { |year| puts "SPANK" }
    end
  end
end

happy_birthday = HappyBirthday.new
happy_birthday.run