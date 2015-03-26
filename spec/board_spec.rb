require 'board'

describe Board do
  let(:cell) { double :cell }
  let(:ship) { double :ship }
  let(:board) { Board.new cell }

  it 'can be created with default dimensions 1x1' do
    expect(board.dimensions).to eq 1
  end

  it 'has a grid of Cell(s) when created (1 for now)' do
    expect(board.grid).to eq cell
  end

  it 'can place a ship (on the one cell we have, for now)' do
    allow(cell).to receive(:place_ship)
    allow(cell).to receive(:content).and_return(ship)
    board.grid.place_ship(ship)
    expect(board.grid.content).to eq ship
  end

  xit 'has 100 cells in the grid'

  xit 'can place a size 2 ship on the cell'

  xit 'can work out the coordinates for a size'
end
