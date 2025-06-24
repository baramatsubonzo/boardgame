class Move
  attr_reader :cell, :mark, :timestamp

  def initialize(cell, mark)
    @cell = cell
    @mark = mark
    @timestamp = Time.now
  end

  def row
    @cell.row
  end

  def col
    @cell.col
  end

  def to_s
    "#{@mark} at (#{@cell.row}, #{@cell.col})"
  end
end
