require 'colorize'

class Piece
  include Enumerable
  attr_reader :moved, :text_content, :cur_pos, :piece_color

  def initialize(x, y)
    @moved = 0
    @position_x = x
    @position_y = y
    @cur_pos = [x,y]
    @legal_moves = []
  end
end