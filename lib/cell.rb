# cell
class Cell
  attr_accessor :content
  attr_reader :size, :hit
  alias_method :hit?, :hit

  def initialize(size = 1)
    @size = size
    @hits = 0
    @hit = false
  end

  def shoot_ship
    content.hit_cell
    @hit_cell = true
  end

  def hit
    fail 'Cell already hit' if hit?
    content.hit
    @hit = true
  end
end
