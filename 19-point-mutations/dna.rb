class DNA
  def initialize(strand)
    @strand = strand.split('')
  end

  def hamming_distance(sample_strand)
    split_strand = sample_strand.split('')
    sum = 0

    length = split_strand.count

    @strand.first(length).each_with_index do |char, index|
      if char != split_strand[index]
        sum += 1
      end
    end
    sum
  end
end