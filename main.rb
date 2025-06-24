# Vasic component
require_relative 'cell'
require_relative 'move'
require_relative 'board'

# Player
require_relative 'player'
require_relative 'human_player'
require_relative 'ai_player'

# UI
require_relative 'ui'

# Game
require_relative 'game'

# Specific Game
require_relative 'tic_tac_toe'

# TODO
# require_relative 'move_history_manager'
# require_relative 'board_set'
# require_relative 'gomoku'
# require_relative 'notakto'

# ゲーム実行
if __FILE__ == $0
  puts "Which game would you like to play?"
  puts "1. TicTacToe"
  puts "2. Gomoku (not implemented yet)"
  puts "3. Notakto (not implemented yet)"
  print "Enter your choice (1-3): "

  choice = gets.chomp.to_i

  case choice
  when 1
    game = TicTacToe.new
    game.play
  when 2
    puts "Gomoku is not implemented yet!"
  when 3
    puts "Notakto is not implemented yet!"
  else
    puts "Invalid choice!"
  end
end