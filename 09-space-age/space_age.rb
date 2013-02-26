require 'date'

class SpaceAge
  def initialize
    @age
  end

  def run
    puts "Space Age, launching..."
    input = ""
    while input != "quit"
      printf "How many seconds old are you? "
      input = gets.chomp.to_i
      age_in_earth(input)
      print_age
    end
  end

  def age_in_earth(input)
    @age = input / 31557600
  end

  def print_age
    puts "You are #{@age} years old."
  end
end

space = SpaceAge.new
space.run