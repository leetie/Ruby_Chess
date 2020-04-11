require_relative 'piece'

class Rook < Piece
  def initialize(x,y,black=true)
    super(x,y)
    if black == true
      @text_content = "\u265c ".yellow
    else
      @text_content = "\u265c".white
    end
  end
end