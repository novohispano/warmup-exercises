class Anagram
  attr_accessor :word

  def initialize(input)
    @word = char_sort(input)
  end

  def match(anagrams)
    result = []

    anagrams.each do |anagram|
      comparison = char_sort(anagram)

      if comparison == word
        result << anagram
      end
    end

    return result
  end

  def char_sort(input)
    input.split('').sort
  end
end