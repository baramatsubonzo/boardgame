class Board
  attr_reader :rows, :cols

  def initialize(rows, cols)
    @rows = rows
    @cols = cols
    @cells = create_board
  end

  def create_board
    Array.new(@rows) do |r|
      Array.new(@cols) { |c| Cell.new(r, c) }
    end
  end

  def cell_at(row, col)
    return nil unless valid_position?(row, col)
    @cells[row][col]
  end

  def place_mark(row, col, mark)  # pieceからmarkに変更
    cell = cell_at(row, col)
    return false unless cell
    cell.place_mark(mark)
  end

  def valid_position?(row, col)
    row >= 0 && row < @rows && col >= 0 && col < @cols
  end

  def valid_move?(row, col)
    cell = cell_at(row, col)
    cell && cell.empty?
  end

  def empty_cells
    @cells.flatten.select(&:empty?)
  end

  def to_s
    horizontal_line = "-" * (@cols * 4 - 1)

    @cells.map.with_index do |row, r|
      row_str = row.map { |cell| " #{cell} " }.join("|")
      r < @rows - 1 ? "#{row_str}\n#{horizontal_line}" : row_str
    end.join("\n")
  end

  def display
    puts to_s
  end
end
