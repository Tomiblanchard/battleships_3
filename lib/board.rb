# board
class Board
  attr_reader :dimensions, :grid

  def initialize(dim = 1, cell)
    @dimensions = dim
    @grid = cell
  end
end
