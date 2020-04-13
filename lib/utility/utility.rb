Dir["./lib/pieces/*.rb"].each {|file| require file}
module Utility
  def set_pieces
    #changing to put objects in array instead of text_content
    #white pieces
    @wr1 = Rook.new(0,0,false)
    @board[0][0] = @wr1

    @wk1 = Knight.new(0,1,false)
    @board[0][1] = @wk1

    @wb1 = Bishop.new(0,2,false)
    @board[0][2] = @wb1

    @wk = King.new(0,3,false)
    @board[0][3] = @wk

    @wq = Queen.new(0,4,false)
    @board[0][4] = @wq

    @wb2 = Bishop.new(0,5,false)
    @board[0][5] = @wb2

    @wk2 = Knight.new(0,6,false)
    @board[0][6] = @wb2

    @wr2 = Rook.new(0,7,false)
    @board[0][7] = @wr2

    #black pieces
    @br1 = Rook.new(0,0)
    @board[7][0] = @br1

    @bk1 = Knight.new(0,1)
    @board[7][1] = @bk1

    @bb1 = Bishop.new(0,2)
    @board[7][2] = @bb1

    @bk = King.new(0,3)
    @board[7][3] = @bk

    @bq = Queen.new(0,4)
    @board[7][4] = @bq

    @bb2 = Bishop.new(0,5)
    @board[7][5] = @bb2

    @bk2 = Knight.new(0,6)
    @board[7][6] = @bb2

    @br2 = Rook.new(0,7)
    @board[7][7] = @br2
    
    #pawn pieces
    8.times do |i|
      @board[1][i] = instance_variable_set("@wp#{i}", Pawn.new(1,i,false))
    end
    8.times do |i|
      @board[6][i] = instance_variable_set("@wp#{i}", Pawn.new(6,i))
    end
  end

  def letter_to_number(let)
    case let
    when "a"
      0
    when "b"
      1
    when "c"
      2
    when "d"
      3
    when "e"
      4
    when "f"
      5
    when "g"
      6
    when "h"
      7
    end
  end

  def switch_players
    if self.current_player == @player_1
      self.current_player = @player_2
    else
      self.current_player = @player_1
    end
  end

  # def check_ownership
  #   if @board.board[@current_player.find_own_piece[0]][@current_player.find_own_piece[1]].piece_color == @current_player.piece_color
  #     puts "piece doesn't belong do you"
  #   else
  #     puts "that is your piece"
  #   end
  # end
end

class String
  attr_accessor :text_content
  def text_content
    self
  end

end