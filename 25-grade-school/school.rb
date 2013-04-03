class School
  attr_reader :db

  def initialize(school)
    @school = school
    @db = Hash.new([])
  end

  def add(name, position)    
    @db[position] = (grade(position) + [name]).sort
  end

  def grade(level)
    @db[level]
  end

  def sort
    Hash.new(@db.sort)
  end
end