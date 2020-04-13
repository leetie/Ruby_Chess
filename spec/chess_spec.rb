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
  it "assigns player 1 to white, and player 2 to black" do
    player_1 = Player.new("jesse")
    player_2 = Player.new("ivory")
    expect(player_1.piece_color).to eql("white")
    expect(player_2.piece_color).to eql("black")
  end

  it "has a name instance variable" do
    jesse = Player.new("jesse")
    expect(jesse.name).to eql("jesse")
  end

  it "gets a move with the get_move method" do
    jesse = Player.new("jesse")
    expect(jesse.get_move).to eql([["a",6],["a",5]])
  end

  it "finds the start position for a move based on @choice[0][0]" do
    jesse = Player.new("jesse")
    jesse.get_move
    expect(jesse.find_beginning_pos).to eql([6,0])
  end
end

describe Game do
  it "initializes with a board and two players" do
  game = Game.new
  expect(game.board.board).to be_an(Array)
  end

  it "gets a move with get_move method and can check to see if that piece equals the current players color" do
    game = Game.new
    expect(game.game_loop).to eql("that is your piece")
  end
end