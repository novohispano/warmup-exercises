class Grandma

  def run
    puts "Hello, Sonny!"
    input = ""
    while input != "BYE"
      printf "Talk to Grandma: "
      input = gets.chomp

      if input == input.upcase then puts "NO, NOT SINCE #{rand(1938...1950)}!"
      elsif input =~ /\w/ then puts "HUH?! SPEAK UP, SONNY!"
      end
    end
  end
end

grandma = Grandma.new
grandma.run