require_relative 'piece'

class Bishop
  def initialize(x,y,black=true)
    super(x,y)
    if black == true
      @text_content = "\u265d ".yellow
    else
      @text_content = "\u265d ".white
    end
  end
end