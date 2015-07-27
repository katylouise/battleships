require 'ship'

describe Ship do
  min = Ship::DEFAULT_MIN_LENGTH
  max = Ship::DEFAULT_MAX_LENGTH

  random_number = rand(min..max)
  subject { Ship.new(random_number) }

  it "ship should have a length" do

    expect(subject.length).to eq(random_number)
  end

  it "should raise an error if ship length is below 2" do
    expect{Ship.new(min - 1)}.to raise_error "Invalid ship size"
  end

  it "should raise an error if ship length is above 5" do
    expect{Ship.new(max + 1)}.to raise_error "Invalid ship size"
  end

  it "should have a direction" do
    expect(subject.direction).to eq Ship::DEFAULT_DIRECTION
  end

  it "allows us to set the direction" do
    expect(subject).to respond_to(:direction=)
  end

end