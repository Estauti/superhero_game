class HeroesPerPlayer
  attr_accessor :number
  MAXIMUM = 30.freeze

  def initialize(number)
    number = Integer(number)
    raise ArgumentError, 'Cannot be negative' if number.negative?
    raise ExceededError if number > MAXIMUM

    @number = number
  end

  class ExceededError < StandardError
    def message
      'Please, respect the maximum'
    end
  end
end