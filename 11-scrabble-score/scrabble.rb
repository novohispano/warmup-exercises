class Scrabble
  def initialize
    @values = {
      %W[A E I O U L N R S T] => 1,
      %W[D G] => 2,
      %W[B C M P] => 3,
      %W[F H V W Y] => 4,
      %W[K] => 5,
      %W[J X] => 8,
      %W[Q Z] => 10,
    }
  end

  def run
    puts "Scrabble, initialized..."
    input = ""
    while input != "quit"
      printf "Give me a word: "
      input = gets.chomp.split("")
      word_processor(input)
    end
  end

  def word_processor(input)
    @values.find do |group, character|
      input.include? character
    end.reduce(:+)
  end
end

scrabble = Scrabble.new
scrabble.run
