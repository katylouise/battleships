require_relative 'ship'

class Board

  attr_reader :grid

  def initialize
    @grid = [[]]
  end

  def place ship
    grid[ship.location[0]][ship.location[1]] = 1
    ship
  end
end