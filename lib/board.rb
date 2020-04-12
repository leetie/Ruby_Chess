require 'colorize'
require './lib/utility/utility.rb'
include Utility
Dir["./pieces/*.rb"].each {|file| require file}

class Board
  attr_accessor :board, :black_rook1
  def initialize
    @board = Array.new(8) {Array.new(8, "  ")}
    self.set_pieces
    self.set_board_color
  end

  def set_board_color
    #fix this mess
      8.times do |i|
        8.times do |j|
          if i % 2 == 0 && j % 2 == 0
            @board[i][j] = @board[i][j].colorize(:background => :black)
            if @board[i][j+1]
              @board[i][j+1] = @board[i][j+1].colorize(:background => :blue)
            end
          elsif i % 2 != 0 && j % 2 != 0
            @board[i][j] = @board[i][j].colorize(:background => :black)
            if @board[i][j+1]
              @board[i][j+1] = @board[i][j+1].colorize(:background => :blue)
            end
          end
        end
      end
      8.times do |i|
        if i % 2 != 0
          @board[i][0] = @board[i][0].colorize(:background => :blue)
        end
      end
  end

  def print_board
    8.times do |i|
      puts "#{i}-#{@board[i].join()}"
    end
    puts "  A  B C D E F G H"
  end
end

board = Board.new
board.print_board