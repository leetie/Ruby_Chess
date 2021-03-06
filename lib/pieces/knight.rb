require_relative 'piece'

class Knight < Piece
  def initialize(x,y, black=true)
    super(x,y)
    if black == true
      @piece_color = "black"
      @text_content = "\u265e ".yellow
    else
      @piece_color = "white"
      @text_content = "\u265e ".white
    end
  end

  def possible_moves(obj,x=@cur_pos[0], y=@cur_pos[1])
    @legal_moves = []
    @possible_moves = [
      [x - 2, y + 1],
      [x - 1, y + 2],

      [x + 1, y + 2],
      [x + 2, y + 1],

      [x + 2, y - 1],
      [x + 1, y - 2],

      [x - 2, y - 1],
      [x - 1, y - 2]
      ]
    @possible_moves.each do |x|
      #cant go off board
      if (x[0] < 8) && (x[1] < 8) && (x[0] >= 0) && (x[1] >= 0)
        @legal_moves << x
      end
    end
    @legal_moves
  end
end