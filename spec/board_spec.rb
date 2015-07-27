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

  it "when we place a ship it is added to the grid" do
   # allow(ship).to receive(:location)
    location = [0, 0]
    subject.place(ship, location)
    expect(subject.grid).not_to be_empty
  end

  it "has placed a ship at the given location" do
    location = [0, 0]
    subject.place(ship, location)
    expect(subject.grid).to include([ship])
  end

end