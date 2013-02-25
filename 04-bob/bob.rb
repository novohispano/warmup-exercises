class Bob
<<<<<<< HEAD

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
=======
  def chat(input)
    puts response_for(input)
  end

  def response_for(input)
    if shouting?(input)
      'Woah, chill out!'
    elsif question?(input)
      'Sure.'
    elsif statement?(input)
      'Whatever.'
    else
      'Fine, be that way.'
    end
  end

  def statement?(input)
    input.length > 0
  end

  def question?(input)
    input.end_with?("?")
  end

  def shouting?(input)
    !input.empty? && input == input.upcase
  end
end

puts "Hey bro, wassup?"
bob = Bob.new
while true
  input = gets.chomp.strip
  bob.chat(input)
end
>>>>>>> 7f90f1f2156bc6c56cb22ffba06880fe796a28ed
