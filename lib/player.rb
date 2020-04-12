class Player
  attr_reader :name, :color, :choice
  def initialize(name)
    @name = name
  end

  def get_move
    puts "Enter your move"
    @choice = gets.chomp.downcase
    @choice = @choice.split("")
    @choice[1] = @choice[1].to_i
    @choice
  end
end