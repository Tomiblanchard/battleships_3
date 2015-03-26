# ship
class Ship
  attr_reader :size, :hits
  DEFAULT_SHIP_SIZE = 1

  def initialize(options)
    @size = options.fetch(:size, DEFAULT_SHIP_SIZE)
    @hits = 0 # initial hits are 0
    @sunk = false
  end

  def hit # a hit increases the hits counter
    @hits += 1
  end

  def sunk? # ? as want to return true or false
    hits >= size
  end

  def self.battleship # use self as refering to the Ship class
    new({ size: 5 })
  end
end
