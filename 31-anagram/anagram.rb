class Anagram
  attr_accessor :word

  def initialize(input)
    @word = splitter(input)
  end

  def match(anagrams)
    result = []

    anagrams.each do |anagram|
      comparison = splitter(anagram)

      if comparison == word
        result << anagram
      end
    end

    return result
  end

  def splitter(input)
    input.split('').sort
  end
end