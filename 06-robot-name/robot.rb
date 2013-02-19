class Robot
  def name
    name = "#{('A'..'Z').to_a.sample}#{('A'..'Z').to_a.sample}#{rand(0..9)}#{rand(0..9)}"
    puts name
  end
end

robot1 = Robot.new
robot1.name