Dir["./lib/**/*.rb"].each {|file| require file if file != "./lib/game.rb"}

class Game
  attr_reader :board, :current_player
  def initialize
    @board = Board.new
    puts "Enter name for player 1, white"
    @player_1 = Player.new(gets.chomp)
    puts "Enter name for player 2, black"
    @player_2 = Player.new(gets.chomp)
    @current_player = @player_1
  end

  def game_loop
    @current_player.get_move
    self.check_ownership
  end

  def check_ownership
    if @board.board.piece_color == @current_player.piece_color
      puts "piece doesn't belong do you"
    else
      puts "that is your piece"
    end
  end
end

game = Game.new
game.board.print_board
game.game_loop