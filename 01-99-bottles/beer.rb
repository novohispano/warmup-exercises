
class Beer

  def initialize(beer)
    @beer = beer
  end

  def song
    while @beer > 1
      puts "#{@beer} bottles of beer on the wall, #{@beer} bottles of beer."
      puts "Take one down and pass it around, #{@beer - 1} bottles of beer on the wall."
      @beer = @beer - 1
      puts
    end
    puts "1 bottle of beer on the wall, 1 bottle of beer."
    puts "Take one down and pass it around, no more bottles of beer on the wall."
    puts
    puts "No more bottles of beer on the wall, no more bottles of beer."
    puts "Go to the store and buy some more, 99 bottles of beer on the wall."
  end
end

beer = Beer.new(100)
beer.song