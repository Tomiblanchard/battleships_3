# cell
class Cell
  attr_accessor :content

  def initialize
    @hits = 0
    @hit = false
  end

  def hit
    raise "Cell already hit" if hit?
    # above will raise message for any second attempt to hit
    content.hit
    # above allows to hit content
    @hit = true
  end

  def hit?
    @hit
  end
end
