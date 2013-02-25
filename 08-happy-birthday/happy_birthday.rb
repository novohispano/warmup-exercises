require 'date'

class HappyBirthday

  def run
    puts "Initializing..."
    input = ""
    while input != "quit"
      printf "When where you born? "
      input = gets.chomp.to_i
      birthday = Date.new(input)

      years = DateTime.now - birthday
      years.each { |year| puts "SPANK" }
    end
  end
end

happy_birthday = HappyBirthday.new
happy_birthday.run