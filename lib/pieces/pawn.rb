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

  def possible_moves(obj,x=@cur_pos[0], y=@cur_pos[1])
    @legal_moves = []
    if @piece_color == "white"
      #puts "inside the white"
      @possible_moves = [
        ###----white-moves#####
        #move fwd one
        [x+1, y+0],
        #take right
        [x+1, y+1],
        #take left
        [x+1, y-1],
        #move two on first turn
        [x+2, y+0],
      ]
    else
      @possible_moves = [
        ###----black_moves####
        #move fwd one
        [x-1, y+0],
        #take right
        [x-1, y+1],
        #take left
        [x-1, y-1],
        #move two on first turn
        [x-2, y+0]
      ]
    end

    @possible_moves.each do |x|
      if(x[0] < 8) && (x[1] < 8) && (x[0] >= 0) && (x[1] >= 0)
        @legal_moves << x
      end
    end

    #removes the option to move forward two if pawn has already moved
    if @moved != 0
      if @piece_color == "white"
        @legal_moves = @legal_moves.select{|i| i != [x+2, y+0]}
      else
        @legal_moves = @legal_moves.select{|i| i != [x-2, y+0]}
      end
    end
    #p @legal_moves
    @legal_moves
  end
end