require_relative 'piece'

class Pawn < Piece
  def initialize(x,y,black=true)
    super(x,y)
    if black == true
      @piece_color = "black"
      @text_content = "\u265f ".yellow
    else
      @piece_color = "white"
      @text_content = "\u265f ".white
    end
  end
end