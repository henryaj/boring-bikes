require 'garage'

describe Garage do
	let(:bike) {Bike.new}
	let(:garage) {Garage.new(:capacity => 12345)}


	it "should fix a bike when it accepts a bike" do
		bike.break!
		garage.accept(bike)
		expect(bike).not_to be_broken
	end

	it "should have the capacity it is initialized with" do
		expect(garage.capacity).to eq 12345
	end

end