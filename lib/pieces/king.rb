require_relative 'piece'

class King < Piece
  def initialize(x,y,black=true)
    super(x,y)
    if black == true
      @text_content = "\u265a ".yellow
    else
      @text_content = "\u265a ".white
    end
  end
end