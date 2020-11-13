class Player
  DEFAULT_HIT_POINTS = 100
  attr_reader :name, :hp

  def initialize(name, hp = DEFAULT_HIT_POINTS)
    @name = name
    @hp = hp
  end

  def reduce_hp
    @hp -= 10
  end
end
