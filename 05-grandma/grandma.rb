class Grandma

  def run
    puts "Hello, Sonny!"
    input = ""
    while input != "BYE"
      printf "Talk to Grandma: "
      input = gets.chomp

      if input =~ /\w/ then puts "HUH?! SPEAK UP, SONNY!"
      elsif input == input.upcase then puts "NO, NOT SINCE 1938!"
      end
    end
  end
end

grandma = Grandma.new
grandma.run