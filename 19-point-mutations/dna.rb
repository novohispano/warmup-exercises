class DNA
  def initialize(strand)
    @strand = strand.split('')
  end

  def hamming_distance(sample_strand)
    split_strand = sample_strand.split('')
    sum = 0
    position = 0

    length = split_strand.count

    @strand.first(length).each do |char|
      if char != split_strand[position]
        sum += 1
      end
      position += 1
      sum
    end
    sum
  end
end