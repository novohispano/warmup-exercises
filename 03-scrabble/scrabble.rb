class Scrabble
<<<<<<< HEAD

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
=======
  VALUES = { 
      "A, E, I, O, U, L, N, R, S, T" => 1,
      "D, G" => 2,
      "B, C, M, P" => 3,
      "F, H, V, W, Y" => 4,
      "K" => 5,
      "J, X" => 8,
      "Q, Z" => 10
  }

  def self.score(input)
    input.upcase.split("").map{|letter| lookup(letter)}.inject(0, :+)
  end

  def self.lookup(letter)
    VALUES.find{|key, value| key.include?(letter)}[1]
  end
end
>>>>>>> 7f90f1f2156bc6c56cb22ffba06880fe796a28ed
