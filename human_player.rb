# human_player.rb
class HumanPlayer < Player
  def initialize(mark, player_number = 1)
    super(mark)
    @player_number = player_number
  end

  def name
    "Player #{@player_number}"
  end

  def get_move(board, ui)
    loop do
      row, col = ui.get_move_input

      if board.valid_move?(row, col)
        cell = board.cell_at(row, col)
        return Move.new(cell, @mark)
      else
        ui.display_invalid_move
      end
    end
  end
end