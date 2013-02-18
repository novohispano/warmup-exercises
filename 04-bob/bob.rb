class Bob

  def run
    puts "Yo, dude! This is Bob."
    input = ""
    while input != "quit"
      printf "Talk to Bob: "
      input = gets.chomp

      if input == "" then puts "Fine. Be that way!"
      elsif input == input.upcase then puts "Woah, chill out!"
      elsif input.end_with?("?") then puts "Sure."
      else puts "Whatever."
      end
    end
  end
end

bob = Bob.new
bob.run