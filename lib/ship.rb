# ship
class Ship
  attr_reader :size

  def initialize(size = 1)
    @size = size
    @hits = 0
  end

  def sunk?
    hits >= size
  end

  def hit
    @hits += 1
  end

  def hits
    @hits ||= 0
  end
end
