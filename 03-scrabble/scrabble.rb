class Scrabble

  values = { 
    "a, e, i, o, u, l, n, r, s, t" => 1,
    "d, g" => 2,
    "b, c, m, p" => 3,
    "f, h, v, w, y" => 4,
    "k" => 5,
    "j, x" => 8,
    "q, z" => 10 
  }

  def self.score(word)
    word.downcase.split[" "].collect{|letter| lookup(letter)}
  end

  def self.lookup(letter)
    values.find{|key, value| key.include?(letter)}[1]
  end
end

scrabble = Scrabble.new
puts scrabble.score("cabbage")