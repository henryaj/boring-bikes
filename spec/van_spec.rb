require 'van'
require 'docking_station'

describe Van do
	let(:van) { Van.new(:capacity => 25) }
	let(:station) { DockingStation.new }
	let(:bike) { Bike.new }

	it "it has the capacity it is initialized with" do
		expect(van.capacity).to eq(25)
	end

	it "should be able to go to a docking station" do
		van.go_to(station)
		expect(van.location).to eq station
	end

	it "should be able to tell a docking station to give it bikes" do
		1.times { station.dock(bike) }
		van.go_to(station)
		van.dock(station.release)
		expect(van.bikes).count.to eq(1)
	end

end