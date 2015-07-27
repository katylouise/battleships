require 'board'

describe Board do

  let(:ship) { double(:ship) }

  it "can place a ship" do
    expect(subject).to respond_to(:place).with(2).argument
  end

  # it "when you place a ship it returns the ship" do
  #   allow(ship).to receive(:location)
  #   expect(subject.place(ship)).to eq ship
  # end

  it "has placed a ship in the coordinates array" do
    location = [0, 0]
    allow(ship).to receive(:direction) { :E }
    allow(ship).to receive(:length) { 3 }
    subject.place(ship, location)
    expect(subject.coordinates).not_to be_empty
  end

end