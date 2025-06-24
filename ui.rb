class UI
  def display_board(board)
    puts "#{board}"
  end

  def display_result(winner)
    puts "=" * 30
    if winner.nil?
      puts "It's a draw!"
    else
      puts "#{winner.name} wins!"
    end
    puts "=" * 30
  end

  def get_input(message)
    print message
    gets.chomp
  end

  def display_message(message)
    puts message
  end

  def display_error(error_message)
    puts "Error: #{error_message}"
  end

  def clear_screen
    system('clear') || system('cls')  # Unix/Mac || Windows
  end

  def display_turn_info(current_player)
    puts "\n#{current_player.name}'s turn (#{current_player.mark})"
  end

  def get_move_input
    row = get_input("Enter row: ").to_i
    col = get_input("Enter column: ").to_i
    [row, col]
  end

  def display_welcome
    clear_screen
    puts "=" * 30
    puts "Welcome to Board Game!"
    puts "=" * 30
    puts
  end

  def display_invalid_move
    display_error("Invalid move! Please try again.")
  end
end