require 'board'

describe Board do
  let(:cell) { double :cell }
  let(:ship) { double :ship }
  let(:board) { Board.new cell }

  xit 'can be created with default dimensions 1x1'

  xit 'has a grid of Cell(s) when created (1 for now)'

  xit 'can place a ship (on the one cell we have, for now)'

  xit 'has 100 cells in the grid'

  xit 'can place a size 2 ship on the cell'

  xit 'can work out the coordinates for a size'
end
