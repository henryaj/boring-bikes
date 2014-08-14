require 'garage'

describe Garage do
	let(:garage) {Garage.new(:capacity => 12345)}
	let(:bike) { double :bike, {:broken? => false} }
	let(:broken_bike) { double :bike }

	it "should fix a bike when it accepts a bike" do
		expect(broken_bike).to receive(:fix!)

		garage.accept(broken_bike)
	end

	it "should have the capacity it is initialized with" do
		expect(garage.capacity).to eq 12345
	end


	

end