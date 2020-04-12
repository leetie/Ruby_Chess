require './lib/board.rb'
require './lib/pieces/piece.rb'
Dir["./lib/**/*.rb"].each {|file| require file}

describe Board do
  it "is an array" do
    expect(subject.board).to be_an(Array)
  end

  it "prints the board" do
    expect(subject.print_board)
  end
end

describe Piece do
  it "has an initial 'moved' variable of 0" do
    piece = Piece.new(0,0)
    expect(piece.moved).to eql(0)
  end
end

describe Player do
  it "has a name instance variable" do
    jesse = Player.new("jesse")
    expect(jesse.name).to eql("jesse")
  end
  it "gets a move with the get_move method" do
    jesse = Player.new("jesse")
    expect(jesse.get_move).to eql(["a",1])
  end
end