class Game
  attr_reader :board, :players, :current_player_index, :history, :ui

  def initialize
    @board = create_board
    @players = create_players
    @current_player = @players.first
    @ui = create_ui
  end

  def play
    setup_game

    until game_over?
      @ui.display_board(@board)
      move = current_player.get_move(@board)
      execute_move(move)
    end

    @ui.display_board(@board)
    winner = check_winner
    @ui.display_result(winner)
  end

  def setup_game
    # Initialize game setting
  end

  def execute_move(move)
    move.cell.place_mark(move.mark)

    switch_to_next_player unless game_over?
  end

  # サブクラスで実装（abstract）
  def game_over?
  end

  def check_winner
  end

  def create_board
  end

  def create_players
  end

  def create_ui
  end

  def switch_to_next_player
    @current_player = (@current_player == @players[0]) ? @players[1] : @players[0]
  end
end