class Cell
  attr_accessor :placeship
  attr_reader :size, :hit
  alias_method :hit?, :hit

  def initialize(size = 1)
    @size = size
    @hits = 0
    @hit = false
  end

  def shoot_ship
    placeship.hit_cell
    @hit_cell = true
  end

  def hit
    fail 'Cell already hit' if hit?
    placeship.hit
    @hit = true
  end
end
