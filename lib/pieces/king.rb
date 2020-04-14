require_relative 'piece'

class King < Piece
  def initialize(x,y,black=true)
    super(x,y)
    if black == true
      @piece_color = "black"
      @text_content = "\u265a ".yellow
    else
      @piece_color = "white"
      @text_content = "\u265a ".white
    end
  end

  def possible_moves(obj,x=@cur_pos[0], y=@cur_pos[1])
    #template-adjust
    @legal_moves = [obj.cp.de]

    @possible_moves = [

    ]

    @possible_moves.each do |x|
      if(x[0] < 8) && (x[1] < 8) && (x[0] >= 0) && (x[1] >= 0)
        @legal_moves << x
      end
    end
    @legal_moves
  end
end