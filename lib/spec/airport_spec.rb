require 'airport'
describe Airport do

  describe '#initialization' do
    it 'has a variable capacity' do
        airport = Airport.new(1)
        plane = Plane.new
        plane1 = Plane.new
        airport.land(plane)
        expect (airport.land(plane1)).to raise_error "Airport Full!!"
    end
  end

  describe '#land' do
    it { is_expected.to respond_to :land }

    it 'lands a plane' do
      airport = Airport.new(1)
      plane = Plane.new
      expect(airport.land(plane)).to eq [plane]
    end
  end

  describe '#takeoff' do
    it { is_expected.to respond_to :takeoff }

    it 'takesoff a plane' do
      airport = Airport.new(1)
      plane = Plane.new
      expect(airport.takeoff(plane)).to eq "plane #{plane} has now left the airport "
    end
  end


end
