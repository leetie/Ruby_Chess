require_relative 'piece'

class Rook < Piece
  def initialize(x,y,black=true)
    super(x,y)
    if black == true
      @piece_color = "black"
      @text_content = "\u265c ".yellow
    else
      @piece_color = "white"
      @text_content = "\u265c ".white
    end
  end
end