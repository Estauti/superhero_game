class HeroesPerPlayer
  attr_accessor :number
  MAXIMUM = 30.freeze

  def initialize(number)
    raise ArgumentError, 'Must be a number' unless number.is_a? Numeric 
    raise ArgumentError, 'Cannot be negative' if number.negative?
    raise ArgumentError, 'Cannot be a floating number' if number.is_a? Float

    @number = number
  end
end