require_relative 'ship'

class Board

  attr_accessor :coordinates

  def initialize
    @coordinates = []
  end

  def place(ship, location)
    if ship.direction == :E
      (0...ship.length).each do |n|
        @coordinates << [location[0] - n, location[1]]
      end
    elsif ship.direction == :W
      (0...ship.length).each do |n|
        @coordinates << [location[0] + n, location[1]]
      end
    elsif ship.direction == :N
      (0...ship.length).each do |n|
        @coordinates << [location[0], location[1] - n]
      end
    elsif ship.direction == :S
      (0...ship.length).each do |n|
        @coordinates << [location[0], location[1] + n]
      end
    end
  end
end