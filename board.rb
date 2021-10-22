require_relative 'square'

class Board
  def initialize
    @squares = Array.new(9) { Square.new }
  end

  def squares
    @squares
  end

  def play_cross(index)
    @squares[index] = Square.new('X')
  end
end
