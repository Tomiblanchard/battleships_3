require 'ship'

describe Ship do
  let(:ship) { Ship.new }

  context 'when created' do
    it 'has a size of 2 cells' do
      expect(ship.size).to eq 2
    end
    it 'has a status of floating' do
      expect(ship).not_to be_sunk
    end
  end

  it 'can be hit' do
    ship.hit
    expect(ship.hits).to be > 0
  end

  it 'can be sunk' do
    2.times { ship.hit }
    expect(ship).to be_sunk
  end

  it 'should be sunk if hit twice' do
    2.times { ship.hit }
    expect(ship).to be_sunk
  end
end
