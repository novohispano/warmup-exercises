class Robot
  attr_reader :name

  def initialize
    @name = random_name
  end
  
  def reset
    puts "Resetting to factory settings."
    name = random_name
  end

  def random_name
    "#{('A'..'Z').to_a.sample}#{('A'..'Z').to_a.sample}#{rand(0..9)}#{rand(0..9)}"
  end
end

robot1 = Robot.new
puts robot1.name
puts robot1.name
puts robot1.name
puts robot1.reset
puts robot1.name