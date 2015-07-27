require 'board'

describe Board do

  let(:ship) { double(:ship) }
  let(:location) { double(:location) }

  it "can place a ship" do
    expect(subject).to respond_to(:place).with(2).argument
  end

  it "when you place a ship it returns the array of ships" do
    expect(subject.place(ship, location)).to eq ship
  end

  xit "when we place a ship it is added to the grid" do
  end

end