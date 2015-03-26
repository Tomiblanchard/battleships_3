require 'cell'

describe Cell do
  let(:cell) { Cell.new }
  let(:ship) { double :ship }

  it 'can have content' do
    cell.content = ship
    expect(cell.content).to eq ship
  end

  context 'dfdfd'
    before do
      cell.content = ship # can delete this line from other tests
      allow(ship).to receive(:hit)
    end

  it 'can be hit' do
    cell.hit
    expect(cell).to be_hit
  end

  it 'throws an error if you try to hit twice' do
    cell.hit
    expect{cell.hit}.to raise_error "Cell already hit"
    # use {} with raise_error method
  end

  it 'hit whatever is in the content' do
    cell.content = ship
    expect(ship).to receive(:hit)
    cell.hit
  end

  it 'knows when contents are sunk' do
  end
end
