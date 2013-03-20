class DNA
  attr_accessor :string

  def initialize(string)
    @string = string.split('')
  end

  def count(letter)
    unless valid_nucleotide?(letter)
      raise ArgumentError.new("#{letter} is not a valid nucleotide.")
    end
    string.find_all{ |char| char == letter }.count
  end

  def nucleotide_counts
    value = {}
    %w{A T C G}.each{ |letter| value[letter] = count(letter) }
    value
  end

  def valid_nucleotide?(letter)
    %w(A T C G U).include?(letter)
  end
end