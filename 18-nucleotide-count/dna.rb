class DNA
  attr_accessor :string

  def initialize(string)
    @string = string.split('')
  end

  def count(letter)
    @string.find_all{ |char| char == letter }.count
  end

  def nucleotide_counts
    values = {'A' => 0, 'T' => 0, 'C' => 0, 'G' => 0}
    @string.group_by{ |char| count(char) }
  end
end