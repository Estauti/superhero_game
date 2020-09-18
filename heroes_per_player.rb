class HeroesPerPlayer
  def initialize(number)
    raise ArgumentError, 'Must be a number' unless number.is_a? Numeric 
    raise ArgumentError, 'Cannot be negative' if number.negative?
    raise ArgumentError, 'Cannot be a floating number' if number.is_a? Float
  end
end