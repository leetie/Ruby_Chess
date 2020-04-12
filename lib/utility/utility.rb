Dir["./lib/pieces/*.rb"].each {|file| require file}
module Utility
  def set_pieces
    #white pieces
    @wr1 = Rook.new(0,0,false)
    @board[0][0] = @wr1.text_content

    @wk1 = Knight.new(0,1,false)
    @board[0][1] = @wk1.text_content

    @wb1 = Bishop.new(0,2,false)
    @board[0][2] = @wb1.text_content

    @wk = King.new(0,3,false)
    @board[0][3] = @wk.text_content

    @wq = Queen.new(0,4,false)
    @board[0][4] = @wq.text_content

    @wb2 = Bishop.new(0,5,false)
    @board[0][5] = @wb2.text_content

    @wk2 = Knight.new(0,6,false)
    @board[0][6] = @wb2.text_content

    @wr2 = Rook.new(0,7,false)
    @board[0][7] = @wr2.text_content

    #black pieces
    @br1 = Rook.new(0,0)
    @board[7][0] = @br1.text_content

    @bk1 = Knight.new(0,1)
    @board[7][1] = @bk1.text_content

    @bb1 = Bishop.new(0,2)
    @board[7][2] = @bb1.text_content

    @bk = King.new(0,3)
    @board[7][3] = @bk.text_content

    @bq = Queen.new(0,4)
    @board[7][4] = @bq.text_content

    @bb2 = Bishop.new(0,5)
    @board[7][5] = @bb2.text_content

    @bk2 = Knight.new(0,6)
    @board[7][6] = @bb2.text_content

    @br2 = Rook.new(0,7)
    @board[7][7] = @br2.text_content
    
    #pawn pieces
    8.times do |i|
      @board[1][i] = instance_variable_set("@wp#{i}", Pawn.new(1,i,false)).text_content
    end
        8.times do |i|
      @board[6][i] = instance_variable_set("@wp#{i}", Pawn.new(6,i)).text_content
    end
  end
end