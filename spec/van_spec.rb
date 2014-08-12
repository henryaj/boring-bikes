require 'van'
require 'docking_station'
require 'bike'

describe Van do
	let(:van) { Van.new(:capacity => 25) }
	let(:station) { DockingStation.new }
	let(:bike) { Bike.new }

	context "intitialization tests" do

		it "it has the capacity it is initialized with" do
			expect(van.capacity).to eq(25)
		end
	end

	context "travelling around" do
		it "should be able to go to a docking station" do
			van.go_to(station)
			expect(van.location).to eq station
		end

		it "should be at the docking staion it went to" do
			kings_cross = DockingStation.new
			van.go_to(kings_cross)
			expect(van.location).to be kings_cross
		end
	end

	context "picking up and dropping bikes off" do

		it "should be able to tell a docking station to give it bikes" do
			1.times { station.dock(bike) }
			van.go_to(station)
			van.dock(station.release)
			expect(van.bikes.count).to eq(1)
		end

	end


end