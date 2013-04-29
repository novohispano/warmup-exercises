class Integer
  def to_roman
    roman[self]
  end

  def roman
    {
      1 => 'I',
      2 => 'II',
      3 => 'III',
      4 => 'IV',
      5 => 'V',
      6 => 'VI',
      9 => 'IX'
    }
  end
end