require_relative 'piece'

class Queen < Piece
  def initialize(x,y,black=true)
    super(x,y)
    if black == true
      @piece_color = "black"
      @text_content = "\u265b ".yellow
    else
      @piece_color = "white"
      @text_content = "\u265b ".white
    end
  end
end