Dir["./lib/**/*.rb"].each {|file| require file if file != "./lib/game.rb"}
include Utility
class Game
  attr_reader :cp
  attr_accessor :cp, :board
  def initialize
    @board = Board.new
    puts "Enter name for player 1, white"
    @p1 = Player.new(gets.chomp)
    puts "Enter name for player 2, black"
    @p2 = Player.new(gets.chomp)
    @cp = @p1
  end

  def board_pos(ary)
    return @board.board[ary[0]][ary[1]]
  end

  def game_loop
    while true
      system 'clear'
      self.board.print_board
      @cp.get_move
      puts "current player desired start move #{@cp.ds}"
      puts "current player desired end #{@cp.de}"
      self.compute_choice
      sleep 1
      self.switch_players
    end
  end

  def check_ownership
    if @board.plug(@cp.ds[0], @cp.ds[1]).piece_color == @cp.piece_color
      puts "that is your piece"
      return true
    elsif @board.plug(@cp.ds[0], @cp.ds[1]).piece_color == "untaken"
      puts "you do not have a piece there, try again"
      @cp.get_move
      self.check_ownership
    elsif @board.plug(@cp.ds[0], @cp.ds[1]).piece_color != @cp.piece_color
      puts "that is not your piece, try again"
      @cp.get_move
      self.check_ownership
    end
  end
end

game = Game.new
game.game_loop