require './lib/board.rb'
require './lib/pieces/piece.rb'

describe Board do
  it "is an array" do
    expect(subject.board).to be_an(Array)
  end

  it "is an 8x8 array" do
    expect(subject.board).to eql(Array.new(8) {Array.new(8, "-")})
  end
end

describe Piece do
  it "has an initial 'moved' variable of 0" do
    expect(subject.moved).to eql(0)
  end
end