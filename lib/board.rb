require 'colorize'
require './pieces/rook.rb'
require './pieces/knight.rb'

class Board
  attr_accessor :board, :black_rook1
  def initialize
    @board = Array.new(8) {Array.new(8, "  ")}
    self.set_board_color
    #testing to see if pieces show up
    @br1 = Rook.new(7,0)
    @board[@br1.cur_pos[0]][@br1.cur_pos[1]] = @br1.text_content
    @bk1 = Knight.new(7,1)
    @board[@bk1.cur_pos[0]][@bk1.cur_pos[1]] = @bk1.text_content.colorize(:background => :black)
  end

  def set_board_color
      8.times do |i|
        8.times do |j|
          if i % 2 == 0 && j % 2 == 0
            @board[i][j] = @board[i][j].colorize(:background => :black)

          elsif i % 2 != 0 && j % 2 != 0
            @board[i][j] = @board[i][j].colorize(:background => :black)
          end
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