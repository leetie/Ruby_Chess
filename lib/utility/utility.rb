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
    @board[0][6] = @wk2

    @wr2 = Rook.new(0,7,false)
    @board[0][7] = @wr2

    #black pieces
    @br1 = Rook.new(7,0)
    @board[7][0] = @br1

    @bk1 = Knight.new(7,1)
    @board[7][1] = @bk1

    @bb1 = Bishop.new(7,2)
    @board[7][2] = @bb1

    @bk = King.new(7,3)
    @board[7][3] = @bk

    @bq = Queen.new(7,4)
    @board[7][4] = @bq

    @bb2 = Bishop.new(7,5)
    @board[7][5] = @bb2

    @bk2 = Knight.new(7,6)
    @board[7][6] = @bk2

    @br2 = Rook.new(7,7)
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
    if self.cp == @p1
      self.cp = @p2
    else
      self.cp = @p1
    end
  end

  def process_choice
    self.board.board[@cp.de[0]][@cp.de[1]] = self.board.board[@cp.ds[0]][@cp.ds[1]]

    self.board.board[@cp.ds[0]][@cp.ds[1]] = self.board.text_content

    # self.board_pos(@cp.de) = self.board_pos(@cp.ds)
    # self.board_pos(@cp.ds) = self.board.text_content
  #   self.board.plug(self.cp.de[0], self.cp.de[1]) = self.board.plug(self.cp.ds[0], self.cp.ds[1])

  #   # self.board.plug(self.cp.ds[0], self.cp.ds[1]) = self.board.text_content
  end

  def compute_choice
    if self.check_ownership == true
      if self.board_pos(@cp.ds).possible_moves.include?(@cp.de)
        self.process_choice
        self.board_pos(@cp.de).cur_pos = @cp.de
        #sets piece's 'moved' variable to !0
        self.board_pos(@cp.de).moved += 1
      else
        puts "Invalid move, try again"
        @cp.get_move
        self.compute_choice
        # puts "cp is #{@cp.name}"
        # puts "cp ds = #{@cp.ds}"
        # puts "cp de = #{@cp.de}"
        # puts "cp piece color is #{@cp.piece_color}"
        # puts "cur_pos of #{@cp.ds} is #{self.board_pos(@cp.ds).cur_pos}"
        # puts self.board_pos(@cp.ds).piece_color
      end
    end
  end
    
    

  # def check_ownership
  #   if @board.board[@cp.find_own_piece[0]][@cp.find_own_piece[1]].piece_color == @cp.piece_color
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
  def piece_color
    "untaken"
  end
end