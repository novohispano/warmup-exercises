class SpaceAge
  def initialize
    @age
  end

  def run
    puts "Space Age, launching..."
    input = ""
    while input != "quit"
      printf "How many seconds old are you? "
      input = gets.chomp
      age_in_earth(input.to_i)
      print_age
    end
  end

  def earth_year_seconds
    31557600
  end

  def age_in_earth(input)
    @age = input / earth_year_seconds
  end

  def print_age
    puts "You are #{@age} years old."
  end
end

space = SpaceAge.new
space.run