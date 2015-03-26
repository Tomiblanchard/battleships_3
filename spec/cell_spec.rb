require 'cell'

describe Cell do
  let(:cell) { Cell.new }
  let(:ship) { double :ship }

  it 'can contain a ship' do
    cell.place_ship(ship)
    expect(cell.content).to eq ship
  end

  context 'with content' do
    before do
      cell.place_ship(ship)
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
      allow(ship).to receive(:hit)
      cell.hit
    end

    it 'knows when contents are sunk' do
      allow(ship).to receive(:sunk?).and_return(true)
      expect(cell.content).to be_sunk
    end
  end
end
