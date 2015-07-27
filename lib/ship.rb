class Ship

  DEFAULT_MIN_LENGTH = 2
  DEFAULT_MAX_LENGTH = 5
  DEFAULT_DIRECTION = :E

  attr_reader :length
  attr_accessor :direction

  def initialize(length, direction=DEFAULT_DIRECTION)
    if length.between?(DEFAULT_MIN_LENGTH, DEFAULT_MAX_LENGTH)
      @length = length
    else
      fail "Invalid ship size"
    end

    @direction = direction
  end

end