require 'capybara/rspec'
require 'board'
require 'ship'
require 'cell'

feature 'Hitting on grid' do
  let(:ship) { Ship.new }
  let(:cell) { Cell.new }
  let(:board) { Board.new cell }

  scenario 'cell can be hit' do
    board.grid.place_ship(ship)
    board.grid.hit
    expect(board.grid).to be_hit
  end

  scenario 'ship is hit when cell is hit' do
    board.grid.place_ship(ship)
    board.grid.hit
    expect(ship.hits).to eq 1
  end
end
