require_relative 'piece'

class Pawn

  def initialize(x,y,black=true)
    super(x,y)
    if black == true
      @text_content = "\u265f ".yellow
    else
      @text_content = "\u265f ".white
    end
  end
end