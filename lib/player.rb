require './lib/utility/utility.rb'

class Player
  attr_reader :name, :piece_color, :choice
  @@white = "not_taken"
  def initialize(name)
    @name = name
    if @@white == "not_taken"
      @piece_color = "white"
    else
      @piece_color = "black"
    end
    @@white = "taken"
  end

  def get_move
    puts "Enter your move eg 'A6-A5'"
    choice = gets.chomp.downcase
    choice = choice.split("")
    choice[1], choice[4] = choice[1].to_i, choice[4].to_i
    choice.slice!(2)
    return @choice = [
      [choice[0],choice[1]],
      [choice[2],choice[3]]
      ]
      
  end

  def find_beginning_pos(pos=@choice[0])
    desired_piece = letter_to_number(pos[0])
    return [@choice[0][1],desired_piece]
  end

  def process_choice(choice=self.find_beginning_pos)
  end
end