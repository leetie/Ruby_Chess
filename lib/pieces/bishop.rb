require_relative 'piece'

class Bishop < Piece
  def initialize(x,y,black=true)
    super(x,y)
    if black == true
      @piece_color = "black"
      @text_content = "\u265d ".yellow
    else
      @piece_color = "white"
      @text_content = "\u265d ".white
    end
  end
end