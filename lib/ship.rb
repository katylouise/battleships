class Ship

  attr_reader :location

  def initialize
    @location = 0
  end

  def set_location(coordinates)
    @location = coordinates
  end
end