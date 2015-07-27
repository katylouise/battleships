require 'board'

describe Board do
  it "can place a ship" do
    expect(subject).to respond_to(:place).with(1).argument
  end
end