class Chunk
  def initialize(number)
    @number = number
  end

  def split
   [].tap do |position|
    position[0] = @number / 1_000_000_000
    position[1] = (@number % 1_000_000_000) / 1_000_000
    position[2] = (@number % 1_000_000) / 1_000
    position[3] = @number % 1_000
   end 
  end
end