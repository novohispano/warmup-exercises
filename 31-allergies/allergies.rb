class Allergies
  attr_accessor :score

  def initialize(input)
    @score = input.to_i
  end

  def allergies
    {
      'eggs'         => 1,
      'peanuts'      => 2,
      'shellfish'    => 4,
      'strawberries' => 8,
      'tomatoes'     => 16,
      'chocolate'    => 32,
      'pollen'       => 64,
      'cats'         => 128,
    }
  end

  def allergic_to?(allergy)
    if score & allergies[allergy] > 0
      true
    else
      false
    end
  end
end

allergies = Allergies.new(34)
puts "#{allergies.allergic_to?('chocolate')}"
puts "#{allergies.allergic_to?('cats')}"
puts "#{allergies.allergic_to?('peanuts')}"

