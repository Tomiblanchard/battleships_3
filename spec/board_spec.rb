require 'board'

describe Board do
  let(:cell){double :cell}
  let(:second_cell){double :second_cell}
  let(:cell_class){double :cell_class, new: cell}
  let(:board) { Board.new({size: 100, cell: cell_class})}
  let(:ship) { double :ship, size:1 }
  let(:ship) { double :ship, size:1 }

  it 'can be created with default dimensions 1x1' do
    expect(board.grid.size).to eq 1
  end

  xit 'can place a ship'

  it 'has 100 cells in the grid' do
    expect(board.grid.count).to eq 100
  end

  it 'can place a size 2 ship on the cell' do
    board.grid[:A1] = second_cell
    board.grid[:A2] = second_cell
    ship = double :ship, size: 2
    expect
  end

  it "can work out the coordinates for a size" do
  end
end
