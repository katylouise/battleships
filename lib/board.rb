require_relative 'ship'

class Board

  attr_reader :grid

  def initialize
    @grid = [[]]
  end

  def place(ship, location)
    grid[location[0]][location[1]] = ship
    ship
  end
end