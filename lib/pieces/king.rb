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
end