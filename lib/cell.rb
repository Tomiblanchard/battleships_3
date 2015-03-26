# cell
class Cell
  attr_reader :hit, :content
  alias_method :hit?, :hit

  def initialize
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

  def place_ship(ship)
    @content = ship
    ship
  end
end
