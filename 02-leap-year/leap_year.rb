class LeapYear
  def run
    puts "Welcome to Year Leap Calculator"
    command = ""
    while command != "quit"
      printf "enter the year: "
      input = gets.chomp
      @parts = input.split(" ")
      command = @parts[0]
      leap_year(command)
    end
  end

  def leap_year(year)
    case year
    when year % 4 == 0 then puts "#{year} it's a leap year"
      unless year % 100 == 0 then puts "#{year} it's a leap year"
        unless year % 400 == 0 then puts "#{year} it's a leap year"
        end
      end
    else puts "#{year} it's not a leap year"
    end
  end
end

leap_year = LeapYear.new
leap_year.run