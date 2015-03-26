require 'capybara/rspec'
require 'board'
require 'ship'
require 'cell'

feature 'When placing ships' do
  let(:ship) { Ship.new }
  let(:cell) { Cell.new }
  let(:board) { Board.new cell }

  scenario 'Board can place a ship (for now board is 1x1)' do
    board.grid.place_ship(ship)
    expect(board.grid.content).to eq ship
  end
end
