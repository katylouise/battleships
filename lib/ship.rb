class Ship

  DEFAULT_MIN_LENGTH = 2
  DEFAULT_MAX_LENGTH = 5

  attr_reader :length

  def initialize(length)
    if length.between?(DEFAULT_MIN_LENGTH, DEFAULT_MAX_LENGTH)
      @length = length
    else
      fail "Invalid ship size"
    end
  end

end