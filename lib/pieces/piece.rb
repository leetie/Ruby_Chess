require 'colorize'

class Piece
  include Enumerable
  attr_reader :piece_color
  attr_accessor :text_content, :cur_pos, :moved

  def initialize(x, y)
    @moved = 0
    @position_x = x
    @position_y = y
    @cur_pos = [x,y]
    @legal_moves = []
  end
end