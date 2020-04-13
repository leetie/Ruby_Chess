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
    while true
      system 'clear'
      self.board.print_board
      @current_player.get_move
      puts "current player desired start move #{@current_player.desired_start}"
      puts "current player desired end #{@current_player.desired_end}"
      if self.check_ownership == true
        self.process_choice
      end
      sleep 2
      self.switch_players
    end
  end

  def check_ownership
    if @board.plug(@current_player.desired_start[0], @current_player.desired_start[1]).piece_color == @current_player.piece_color
      puts "that is your piece"
      return true
    elsif @board.plug(@current_player.desired_start[0], @current_player.desired_start[1]).piece_color == "untaken"
      puts "you do not have a piece there, try again"
      @current_player.get_move
      self.check_ownership
    elsif @board.plug(@current_player.desired_start[0], @current_player.desired_start[1]).piece_color != @current_player.piece_color
      puts "that is not your piece, try again"
      @current_player.get_move
      self.check_ownership
    end
  end
end

game = Game.new
game.game_loop