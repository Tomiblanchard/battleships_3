require 'cell'

describe Cell do
  let(:cell) { Cell.new }
  let(:ship) { double :ship }

  it 'can contain a ship' do
    cell.placeship = ship
    expect(cell.placeship).to eq ship
  end

  context 'with content' do
    before do
      cell.placeship = ship
      allow(ship).to receive :hit
    end

    it 'can be hit' do
      cell.hit
      expect(cell).to be_hit
    end

    it 'throws an error if hit twice' do
      cell.hit
      expect { cell.hit }.to raise_error 'Cell already hit'
    end

    it 'hit whatever is in the content' do
      expect(ship).to receive(:hit)
      cell.hit
    end
  end
end
