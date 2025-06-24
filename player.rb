# player.rb
class Player
  attr_reader :mark

  def initialize(mark)
    @mark = mark
  end

  def get_move(board)
  end
  # default name; overapping at subclass
  def name
    "Player"
  end
end