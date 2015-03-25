require 'ship'

describe Ship do
  let(:ship) { Ship.new }

  context 'when created' do
    it 'has a default size of 1 cells' do
      expect(ship.size).to eq 1
    end

    it 'can be created with custom size' do
      new_ship = Ship.new 5
      expect(new_ship.size).to eq 5
    end

    it 'has a status of floating' do
      expect(ship).not_to be_sunk
    end
  end

  it 'can be hit' do
    ship.hit
    expect(ship.hits).to be 1
  end

  it 'can be sunk' do
    ship.size.times { ship.hit }
    expect(ship).to be_sunk
  end

  it 'should be sunk if hit as many times as its length' do
    ship.size.times { ship.hit }
    expect(ship).to be_sunk
  end
end
