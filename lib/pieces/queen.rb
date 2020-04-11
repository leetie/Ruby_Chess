require_relative 'piece'

class Queen

  def initialize(x,y,black=true)
    super(x,y)
    if black == true
      @text_content = "\u265b ".yellow
    else
      @text_content = "\u265b ".white
    end
  end
end