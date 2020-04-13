Dir["./lib/**/*.rb"].each {|file| require file if file != "./lib/game.rb"}
include Utility
class Game
  attr_reader :board, :current_player
  attr_accessor :current_player
  def initialize
    @board = Board.new
    puts "Enter name for player 1, white"
    @p1 = Player.new(gets.chomp)
    puts "Enter name for player 2, black"
    @p2 = Player.new(gets.chomp)
    @current_player = @p1
  end

  def game_loop
    # @current_player.get_move
    # check_ownership
    # self.switch_players
    # @current_player
    # self.check_ownership
  end

  def check_ownership
    # start_piece = @current_player.find_own_piece
    # if @board.plug(start_piece[0],start_piece[1]).piece_color == @current_player.piece_color
    #   return "puts that piece is yours"
    # else
    #   return "that piece is not yours"
    # end
    # if @board.board[@current_player.find_beginning_pos[0]][@current_player.find_beginning_pos[1]].piece_color == @current_player.piece_color
    #   puts "piece doesn't belong do you"
    # else
    #   puts "that is your piece"
    # end
  end
end

game = Game.new
game.board.print_board
game.game_loop