require './lib/utility/utility.rb'
include Utility
class Player
  attr_reader :name, :piece_color, :choice, :desired_start, :desired_end
  @@white = "not_taken"
  def initialize(name)
    @name = name
    if @@white == "not_taken"
      @piece_color = "white"
    else
      @piece_color = "black"
    end
    @@white = "taken"
    @choice = nil
  end

  #a[x,y] b[x,y]
  #letters belong on Y
  def get_move
    puts "#{self.name}, enter your move eg 'A6-A5'"
    choice = gets.chomp.downcase
    choice = choice.split("")
    choice.slice!(2)
    choice[0], choice[2] = letter_to_number(choice[0]), letter_to_number(choice[2])
    @choice = [[choice[1].to_i,choice[0].to_i,],[choice[3].to_i,choice[2].to_i]]

    #desired_start is something like [1,1]
    @desired_start = @choice[0]
    #desired_end is something like [2,1]
    @desired_end = @choice[1]
    # choice[1], choice[4] = choice[1].to_i, choice[4].to_i
    # choice.slice!(2)
    # return @choice = [
    #   [choice[0],choice[1]],
    #   [choice[2],choice[3]]
    #   ]
      

  end

  # def find_own_piece(pos=@choice[0])
  #   desired_piece = letter_to_number(pos[0])
  #   return [pos[1],desired_piece]
  # end

  # def process_choice(choice=self.find_own_piece)
  # end
end