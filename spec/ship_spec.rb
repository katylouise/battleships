require 'ship'

describe Ship do
  min = Ship::DEFAULT_MIN_LENGTH
  max = Ship::DEFAULT_MAX_LENGTH

  it "ship should have a length" do
    random_number = rand(min..max)
    ship = Ship.new(random_number)
    expect(ship.length).to eq(random_number)
  end

  it "should raise an error if ship length is below 2" do
    expect{Ship.new(min - 1)}.to raise_error "Invalid ship size"
  end

  it "should raise an error if ship length is above 5" do
    expect{Ship.new(max + 1)}.to raise_error "Invalid ship size"
  end

end