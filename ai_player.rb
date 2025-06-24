# ai_player.rb
class AIPlayer < Player
  def initialize(mark, difficulty = :easy)
    super(mark)
    @difficulty = difficulty
  end

  def name
    "Computer"
  end

  def get_move(board, ui = nil)
    ui.display_message("Computer is thinking...") if ui

    sleep(0.5)
    random_move(board)
  end

  private

  def random_move(board)
    empty_cells = board.empty_cells
    return nil if empty_cells.empty?

    cell = empty_cells.sample
    Move.new(cell, @mark)
  end
end