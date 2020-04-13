require 'colorize'
require './lib/utility/utility.rb'
include Utility
Dir["./pieces/*.rb"].each {|file| require file}

class Board
  attr_accessor :board
  attr_reader :text_content
  def initialize
    @text_content = "  "
    @board = Array.new(8) {Array.new(8, @text_content)}
    self.set_pieces
    
  end


  #possible solutions
    #seperate output board and working board for purposes of gui
    #
  def set_board_color
    #fix this mess
      8.times do |i|
        8.times do |j|
          if i % 2 == 0 && j % 2 == 0
            @board[i][j].text_content = @board[i][j].text_content.colorize(:background => :black)
            if @board[i][j+1]
              @board[i][j+1].text_content = @board[i][j+1].text_content.colorize(:background => :blue)
            end
          elsif i % 2 != 0 && j % 2 != 0
            @board[i][j].text_content = @board[i][j].text_content.colorize(:background => :black)
            if @board[i][j+1]
              @board[i][j+1].text_content = @board[i][j+1].text_content.colorize(:background => :blue)
            end
          end
        end
      end
      8.times do |i|
        if i % 2 != 0
          @board[i][0].text_content.colorize(:background => :blue)
        end
      end
  end

  def print_board
    self.set_board_color
    8.times do |i|
      print "#{i}-"
      8.times do |j|
        print @board[i][j].text_content
      end
      print "\n"
    

    end
    puts "  A  B C D E F G H"
  end

  def plug(x,y)
    return self.board[x][y]
  end
end

# board = Board.new
# board.print_board