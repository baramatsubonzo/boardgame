class TicTacToe < Game
  private

  def create_board
    Board.new(3, 3)
  end

  def create_players
    [
      HumanPlayer.new("X", 1),
      HumanPlayer.new("O", 2)
    ]
  end

  def game_over?
    check_winner || @board.empty_cells.empty?
  end

  def check_winner

    (0..2).each do |row|
      if check_line(@board.cell_at(row, 0), @board.cell_at(row, 1), @board.cell_at(row, 2))
        return @current_player
      end
    end

    (0..2).each do |col|
      if check_line(@board.cell_at(0, col), @board.cell_at(1, col), @board.cell_at(2, col))
        return @current_player
      end
    end

    if check_line(@board.cell_at(0, 0), @board.cell_at(1, 1), @board.cell_at(2, 2))
      return @current_player
    end

    if check_line(@board.cell_at(0, 2), @board.cell_at(1, 1), @board.cell_at(2, 0))
      return @current_player
    end

    nil  # non-winner
  end

  def check_line(cell1, cell2, cell3)
    return false if cell1.empty? || cell2.empty? || cell3.empty?
    cell1.state == cell2.state && cell2.state == cell3.state
  end

  def setup_game
    @ui.display_welcome
    @ui.display_message("TicTacToe - First to get 3 in a row wins!")
    @ui.display_message("")
  end
end