require 'van'
require 'docking_station'

describe Van do
	let(:van) {Van.new(:capacity => 25)}
	let(:station) { DockingStation.new }

	it "it has the capacity it is initialized with" do
		expect(van.capacity).to eq(25)
	end

	it "should be able to go to a docking station" do
		van.go_to(station)
		expect(van.location).to eq station
	end
end